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

Keras3 example of 

'''python
# import keras, defaults to tensorflow backend
import keras
from keras.layers import Dense

# Define the sequential model
model = keras.Sequential([
    # Determine 128 things about the image, the features
    # Input shape is 64, because 8x8 image = 64 pixels
    # (64,) is a tuple and not a number, the shape should be a tuple
    Dense(128, activation='relu', input_shape=(64,)),
    # 10 is the output layer, a number should fall into 1 of 10
    Dense(10, activation='softmax') # 10 classes (digits 0-9)
])

model.compile(optimizer='adam',
    loss='sparse_categorical_crossentropy', 
    metrics=['accuracy'])

# Reshape the target variable to be a 2D array for Keras
y = digits.target.reshape(-1, 1) # Learn! 
model.fit(data, digits.target, epochs=10)
'''

Softmax says the ml should add up the confidence to 100%

- 80% sure the number is 1
- 18% sure the number is 7
- 2% sure it could be xyz

