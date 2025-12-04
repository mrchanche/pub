# LXC Basic Flow

### Install

```bash
sudo apt update -y
sudo apt install lxc lxc-templates bridge-utils

# Create the lxc group
sudo groupadd lxc
# Add yourself to the group
sudo usermod -aG lxc $USER
```

- lxc = core package
- lxc-templates = templates for different distros
- bridge-utils = setup bridging to connect vm to local net L2 adjacent

Validate with:

```bash
lxc-checkconfig --version
```

### Prep Our Network

We need to edit netplan so we can hang lxc interfaces off a bridge attached to our physical eno2 10Gi nic. 

Base setup:

```bash
network:
  version: 2
  ethernets:
    eno2:
      dhcp4: true
```

We need to move to:

```bash
network:
  version: 2
  ethernets:
    eno2:
      dhcp4: true
  bridges:
    br0:
      interfaces: [eno2]
      dhcp4: yes
      optional: true
      parameters:
        stp: false
        forward-delay: 0
```
This will slave our physical 10Gi eno2 to the br0 interface and later allow us to hang lxc interfaces off of it to receive DHCP on our LAN.

### Create Some Containers

This will configure the containers and setup conf files and such.

```bash
sudo lxc-create -n lab1 -t download -- --dist ubuntu --release noble --arch amd64 && \
sudo lxc-create -n lab2 -t download -- --dist ubuntu --release noble --arch amd64 && \
sudo lxc-create -n lab3 -t download -- --dist ubuntu --release noble --arch amd64
```

### Configure The Containers

```bash
sudo micro /var/lib/lxc/lab1/config
sudo micro /var/lib/lxc/lab2/config
sudo micro /var/lib/lxc/lab3/config
```

Replace the network configuration in those files (at the bottom) with:

```bash
lxc.net.0.type = veth
lxc.net.0.link = br0
lxc.net.0.flags = up
lxc.net.0.name = eth0

# CPU/RAM
lxc.cgroup2.memory.max = 2G
lxc.cgroup2.cpuset.cpus = 0-1
```

### Start Containers

```bash
sudo lxc-start -n lab1 -d
sudo lxc-start -n lab2 -d
sudo lxc-start -n lab3 -d
```

### Verify And Connect

Check status: `sudo lxc-ls -f`

You should see these containers on your local network.

Attach to a container on console to setup ssh/etc...: `sudo lxc-attach -n lab1`

Validate you can ping outbound to the internet or if its in an air-gapped environment that is still routable it can reach paste the gateway.

### Stop or Destroy

Stop: `sudo lxc-stop -n lab1`

Destroy: `lxc-destroy -n lab1`

### Storage

Lxc containers are persistent by default so as long as the virtual drive is not corrupted or destroyed just treat it like any other VM.