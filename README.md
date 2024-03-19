# EmoGen

![Python](https://img.shields.io/badge/python-v3.7+-blue.svg)
![PyTorch](https://img.shields.io/badge/PyTorch-v1.8.1-orange.svg)
![Colab](https://img.shields.io/badge/Colab-Google-yellow.svg)

This project demonstrates how to extract emotions from images using a Convolutional Neural Network (CNN) model trained on the EmoSet dataset. The EmoSet dataset includes images annotated with various emotions, making it an excellent resource for emotion recognition tasks.

## 🌟 Overview

The goal of this project is to train a machine learning model to identify and extract emotions from given images. We use a pre-trained **ResNet-50 model** as the backbone, modify it for emotion classification, and train it on the EmoSet dataset. This dataset is structured into different emotions, with annotations available for each image.

## 📁 Dataset

The EmoSet dataset is organized into two main folders: `annotation` and `image`, with subfolders for each emotion category. Each image has a corresponding JSON file in the annotation folder that includes details such as image ID, emotion, brightness, colorfulness, and facial expression.

## 🔧 Setup and Installation

This project is designed to run on Google Colab, which provides a free GPU for training. To get started:

1. Download the dataset from [Dropbox](https://www.dropbox.com/scl/fi/myue506itjfc06m7svdw6/EmoSet-118K.zip?dl=1&rlkey=7f3oyjkr6zyndf0gau7t140rv) 
2. Open `EmoGen.ipynb` in Google Colab and follow the instructions.
3. Run the cells in the notebook to train and evaluate the model.

## 🚀 Model

The project uses the **ResNet-50 model**, modified to classify images into one of the emotion categories present in the EmoSet dataset. The final layer of the model is replaced with a fully connected layer that outputs the number of emotion categories.

## 📈 Training

Training details including hyperparameters and training loops are described within the `EmoGen.ipynb` notebook.

## 📊 Evaluation

The model's performance is evaluated on a separate test set not seen during the training process. Accuracy and other metrics are provided to assess how well the model can generalize to new data.

## 📚 Documentation

Below is a list of documentation for the key components and dataset used in this project:

### EmoSet Dataset

The EmoSet dataset comprises images annotated with eight different emotion categories (amusement, anger, awe, contentment, disgust, excitement, fear, sadness) and several descriptive attributes (brightness, colorfulness, facial expression, etc.).

- [EmoSet Documentation](https://vcc.tech/EmoSet)

### PyTorch

PyTorch was used in this project for model development, training, and evaluation.

- [Official PyTorch Website](https://pytorch.org/docs/)

### ResNet-50 Model

The ResNet-50 model, a deep residual network, is utilized as the backbone for the emotion classification task in this project. It is pre-trained on ImageNet and adapted for emotion classification.

- [Deep Residual Learning for Image Recognition Paper](https://arxiv.org/abs/1512.03385)

### Google Colab

Google Colab was used to develop and execute the project code.

- [Colab Welcome Page](https://colab.research.google.com/notebooks/welcome.ipynb)
