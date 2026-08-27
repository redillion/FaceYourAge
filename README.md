# Age Progression Model

This repository contains the **AI model and training implementation** developed for FaceYourAge, an age progression system designed to generate simulated future appearances from facial images.

## Problem

Facial aging is difficult to simulate realistically because the appearance of a person changes across multiple facial characteristics, including skin texture, facial structure, and other age-related features. In addition, many existing approaches are trained on generalized facial datasets that may not adequately represent Filipino facial characteristics.

## Solution

This project uses a hybrid **SAM–StyleGAN2** approach for controlled facial age progression.

- **SAM (Style-based Age Manipulation)** provides control over the desired age transformation.
- **StyleGAN2** generates realistic facial images while maintaining the visual characteristics of the input.
- A localized **Filipino facial dataset** was prepared and used to adapt the model to the target population.

The model receives a facial image and a target age, processes the input through the age progression pipeline, and produces a simulated age-progressed facial image.

## Model Pipeline

```text
Input Facial Image
        ↓
Face Detection & Alignment
        ↓
Image Preprocessing
        ↓
SAM Age Manipulation
        ↓
StyleGAN2 Generation
        ↓
Post-processing
        ↓
Age-Progressed Image
````

## Dataset

A localized Filipino facial dataset was prepared for model development and evaluation. The dataset contained **1,880 base Filipino facial images**, with additional augmented data used to improve gender and age balance.

The dataset was organized for different stages of model development, including fine-tuning, augmentation, longitudinal aging experiments, and target-age synthesis.

## Technologies

* **Python**
* **PyTorch**
* **StyleGAN2**
* **SAM**
* **OpenCV**
* **Pillow**
* **Dlib**
* **NumPy**
* **Kaggle**
* **Google Colab**

## Evaluation

The model was evaluated using quantitative and identity-preservation measures, including:

* **Mean Absolute Error (MAE)** for age estimation
* **Cosine Similarity** using facial embeddings for identity preservation
* Qualitative assessment of generated facial aging patterns

The overall reported **MAE was 8.40 years** across the evaluated age categories.

## Output

The model generates an age-progressed version of the input face based on the specified target age. The generated outputs are intended as **visual simulations**, rather than exact predictions of how a person will actually look in the future.

## Related Application

The trained model is integrated into the **FaceYourAge Android application**, where users can upload or capture a facial image, provide age-related parameters, and receive the generated result through a client-server architecture.

**Model Repository →** [https://github.com/redillion/BagsakanCC](https://github.com/redillion/BagsakanCC)
