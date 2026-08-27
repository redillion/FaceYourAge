# Age Progression Model

This repository contains the AI/ML model developed for **FaceYourAge**, an age progression system designed to generate simulated future appearances from facial images.

The project uses a hybrid **SAM–StyleGAN2** approach for controlled facial age progression. A localized Filipino facial dataset was prepared and used during model development to better represent the target population.

## Overview

The model takes a facial image and a target age as input and generates an age-progressed version of the face while attempting to preserve the person's identity and facial characteristics.

```text
Input Image
     ↓
Face Detection & Preprocessing
     ↓
Age Manipulation
     ↓
StyleGAN2 Generation
     ↓
Generated Age-Progressed Image
```

## Dataset

A localized Filipino facial dataset was prepared for model development and evaluation. The dataset contained **1,880 base Filipino facial images**, with additional augmented data used to support model training and improve dataset balance.

## Technologies

* Python
* PyTorch
* StyleGAN2
* SAM
* OpenCV
* Pillow
* Dlib
* NumPy
* Google Colab
* Kaggle

## Evaluation

The generated results were evaluated using both quantitative and identity-preservation measures, including **Mean Absolute Error (MAE)** for age estimation and **cosine similarity** using facial embeddings to assess identity preservation.

The model achieved an overall **MAE of 8.40 years** across the evaluated age categories.

## Application

The trained model serves as the AI component of the **FaceYourAge Android application**, where users can provide a facial image and receive an age-progressed result through the application's backend.

**Application Repository:**
https://github.com/redillion/BagsakanCC

## Related Repository

The complete model implementation and development resources are available in this repository:

https://github.com/redillion/age-progression-model
