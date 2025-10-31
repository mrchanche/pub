# Chapter 2 - Intruction to the Core of Machine Learning

Pattern Recognition

This chapter is 100% concepts only.

- Reinforcement learning
    - Tech through experience, not example
- NN will bridge tradition ML and Reinforcement Learning

MNIST data is basic but contains all the fundamental required challenges for learning computer vision.

MNIST Complexity

- Grayscale
    - Not just B/W but shades of gray
- Style differences
    - How people write 4 open/closed or 7 US/European etc... along
    - wierd angles people write at, pressure
- Imperfections and noise
- Pixel patterns

You cannot write code to understand all the possible variations of pixel locations and densities, there is just to many variables. Deep learning will take care of the pattern recognition.

Code snippets at this point can be skipped, they are just for show and not part of any tutorial.

- matplotlib
    - visualize and draw the thing
- numpy
    - compute/math the thing
- sklearn
    - contains things to test with (datasets)

Keras3 example:

```bash
pip install tensorflow keras keras-cv keras-hub fqdn ipykernel jupyterlab matplotlib scikit-learn tqdm
```

```python
import matplotlib.pyplot as plt
import numpy as np
from sklearn import datasets
digits = datasets.load_digits()

print(digits.data.shape)

_, axes = plt.subplots(nrows=1, ncols=4, figsize=(15, 3))
for ax, image, label in zip(axes, digits.images, digits.target):
    ax.set_axis_off()
    ax.imshow(image, cmap=plt.cm.gray_r, interpolation="nearest")
    ax.set_title("Training: %i" % label)

# Import necessary libraries
import keras
from keras.layers import Dense
from sklearn.datasets import load_digits

# Load the digits dataset
digits = load_digits()
data = digits.data  # Shape: (1797, 64)

# Define the sequential model
model = keras.Sequential([
    Dense(128, activation='relu', input_shape=(64,)), # 64, is the tuple
    Dense(10, activation='softmax')
])

# Prepare for machine learning
# Setup for the ML 'act', drives ml strategy
model.compile(optimizer='adam', 
              loss='sparse_categorical_crossentropy', 
              metrics=['accuracy'])

# No need to reshape y if using sparse_categorical_crossentropy
# Just use digits.target directly (it's already 1D: shape (1797,))
model.fit(data, digits.target, epochs=10, validation_split=0.2)
```

**Softmax** says the ml should add up the confidence to 100%

- 80% sure the number is 1
- 18% sure the number is 7
- 2% sure it could be xyz

Take inputs with labels (images and labels), make predictions, compare with real answers, adjust weights based on if it was wrong or not.

The nn layers (128) contain the patterns the ml discovers. You cannot memorize 10kk hand written images, but you can learn 10 patterns that can categorize 10kk images.

2.2 - page 49