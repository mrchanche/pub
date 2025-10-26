# newb-typer

New Keyboard Typer to help you adjust to a new setup

I miss those old typing improvement games and trainers I had on my 8088/386sx. I have recently moved from a nice Corsair K100 Air ultra low profile mechanical to a rediculously chonky Gravastar TKL. I really like how the Gravastar types but wow am I missing keys and getting one key off during touch typing.

I just want a simple x-word typing test with random words or sentences that will track accuracy and time. But I want this via terminal and not on the browser. 

### Requirements

- Must be usable over ssh/console
- Must track accuracy
- Must track time
- Start with 1 dictionary that must be thematic
	- Cyberpunk
	- Horror stories
	- Scifi
	- etc...
- Must have a menu that also shows your score for the session

### Current Status

The word list has turned into more of a phrase list. With words and phrases/commands from Cyberpunk 2077, Terminator, Hyperion, Three Body Problem, Foundation, bash, python, pytorch, numpy, matplotlib and other linux utilities.

The current list is: 2890 phrases and words. Some phases are very short 2 letter commands, some are full sentences. 

Added clearing of text between actions.

I would like to add some color in vanilla python without requiring external packages.

```python
print("\033[;30;42mThis text is black with a green background.\033[0m")
```
