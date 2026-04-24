# HW5 Study Guide

## What HW5 is in this workspace

`HW5` is stored in its own folder in this workspace.
The main files are:

- `HW5.pdf`
- `HW5.ipynb`
- `HW5_completed.ipynb`
- `HW5_1.ipynb`
- `HW5_2.ipynb`
- `HW5_3.ipynb`
- `HW5_5.ipynb`
- `HW5_report.tex`
- `HW5_report.pdf`
- `build_HW5_report.bat`

There are also LaTeX build byproducts:

- `HW5_report.aux`
- `HW5_report.log`
- `HW5_report.out`


## What this homework covers

`HW5` spans several topics:

- convolution networks
- nonlinear regression
- model tuning
- kernelization
- tree regression

Only part of that is directly covered by the textbook material you provided in this workspace.

## Coverage relative to the provided textbook PDFs

### Directly supported by the provided PDFs

- Exercise 2: nonlinear regression
  This lines up directly with Chapter `10`, especially Example `10.3`, Section `10.2.3`, the compact nonlinear feature notation in Equation `(10.9)`, the shared-feature nonlinear regression model in Equation `(10.20)`, and the multi-output least-squares cost in Equation `(10.23)`.
- Exercise 3.2
  The logistic-regression-style MNIST model with a single softmax layer is conceptually tied to the multi-class Softmax viewpoint from Chapter `7`, especially Equation `(7.23)`, even though the implementation is done in Keras.

### Only partially supported by the provided PDFs

- Exercise 1: convolution networks
  This is beyond the provided Chapter `6` through `10` PDFs.
- Exercise 3.1 and 3.3: model tuning with deeper neural networks
  These go beyond the supplied chapters, although they still build on the classification viewpoint from Chapters `6` and `7`.
- Exercise 4: kernelization of regularized least squares
  The assignment itself says this is Chapter `12` material, and Chapter `12` was not provided here.
- Exercise 5: boosting tree regression / tree regression
  The assignment itself points to Chapter `14`, which was not provided here.

## File-by-file annotations

### `HW5.pdf`

Role:

- assignment handout

Why it matters:

- this is the source document that tells you which exercises are conceptual, which are coding-based, and which textbook examples they are meant to follow
- Exercise 2 explicitly points back to Example `10.3`
- Exercise 4 explicitly says it is Exercise `12.4` in MLR
- Exercise 5 explicitly points to Chapter `14`

Best study use:

- read this first so you know which notebook cells are trying to answer which prompt

### `HW5.ipynb`

Role:

- starter / partially completed notebook

How to use it:

- use it for self-testing before opening the solved version
- compare its exercise layout to `HW5_completed.ipynb` to see what needed to be added

### `HW5_completed.ipynb`

Role:

- main solved notebook for this homework

This is the best study file in the HW5 set.

### `HW5_1.ipynb`, `HW5_2.ipynb`, `HW5_3.ipynb`, `HW5_5.ipynb`

Role:

- extracted exercise-specific notebooks

Best use:

- open these when you want one exercise per notebook without the rest of HW5 in the way
- each extracted notebook includes the shared helper cell from `HW5_completed.ipynb`, so it can be run on its own

#### Exercise 1: Convolution networks on stripe images

What the notebook does:

- generates synthetic vertical-stripe and horizontal-stripe images
- trains a small convolutional network
- compares validation accuracy and loss
- visualizes the learned convolution kernel
- tests architecture variants

How to study it:

- focus on the relationship between the data-generation process and the learned kernel
- this is a good intuition builder for what a convolution filter actually detects

Textbook note:

- this topic lies outside the provided Chapter `6` through `10` PDFs, so this guide does not invent equation references for it

#### Exercise 2: Nonlinear regression with sinusoidal features

This is the most direct textbook match in HW5.

Direct textbook connections:

- Chapter `10`
- Section `10.2.3`
- compact nonlinear feature notation: Equation `(10.9)`
- shared-feature nonlinear regression model: Equation `(10.20)`
- multi-output least-squares cost: Equation `(10.23)`
- Example `10.3`: modeling multiple waves

What the notebook is doing conceptually:

- it builds two parameterized nonlinear feature transformations
  `f1(x)` and `f2(x)`
- it feeds those features into a final linear combination
- it minimizes a least-squares objective over all parameters jointly

Why this matters:

- it is a concrete example of nonlinear feature engineering
- the final model is still linear in the transformed feature space, but nonlinear in the original input variables
- it is a strong bridge between ordinary linear regression and neural-network-style learned features

How to review it:

- look first at the feature-transform function
- then the model function
- then the cost-history plot
- finally the learned parameters and the quality of fit

If you are reviewing Chapter 10, this is the HW5 section to study most closely.

#### Exercise 3: Model tuning on MNIST

This exercise has three parts.

##### Exercise 3.1: learning-rate sweep

What to focus on:

- validation loss as the tuning metric
- how large learning rates can destabilize optimization
- how smaller learning rates can improve stability but slow progress

Textbook connection:

- this is optimization practice rather than a direct Chapter `10` example in the provided PDFs

##### Exercise 3.2: logistic regression on MNIST

Direct conceptual connection:

- multi-class Softmax classification from Chapter `7`
- especially the interpretation behind Equation `(7.23)`

Why:

- a single dense softmax layer is the neural-network version of multinomial logistic regression

How to study it:

- compare its validation-loss behavior with the deeper model in Exercise 3.3
- use it to reinforce the distinction between underfitting, reasonable fit, and overfitting

##### Exercise 3.3: larger neural network

What to focus on:

- clearer overfitting behavior
- the fact that validation loss can worsen even while accuracy remains high

Textbook note:

- this sits beyond the provided Chapter `6` through `10` material, so use it more as practical model-selection training than as a source of examinable textbook equations

#### Exercise 4: kernelization of l2-regularized least squares

Role:

- derivation / math exercise

What the completed notebook contains:

- a clean derivation from the regularized primal problem to the kernelized predictor

Important limitation:

- the assignment itself says this is Chapter `12` material
- Chapter `12` was not provided here, so this guide cannot responsibly cite the exact textbook section or equation number from the PDF set available in this workspace

How to study it anyway:

- follow the representer-style step
  `w = Phi a`
- then derive the kernel system
  `(K + lambda I) a = y`
- finally study the prediction formula for a new point

This is still a worthwhile review file if you want the algebraic pattern of kernelization.

### `HW5_report.tex`

Role:

- polished written report source

Best use:

- review this when you want the homework answers in a cleaner narrative form than the notebook
- especially useful for conceptual exercises like Exercise 4

### `HW5_report.pdf`

Role:

- compiled PDF version of the report

Best use:

- quick reading without opening the notebook

### `build_HW5_report.bat`

Role:

- helper script for compiling the LaTeX report

Best use:

- only relevant if you want to rebuild the report after editing the `.tex`

### `HW5_report.aux`, `HW5_report.log`, `HW5_report.out`

Role:

- LaTeX build artifacts

Study use:

- none

## Best way to review HW5

1. Read `HW5.pdf`
2. Focus first on Exercise 2 in `HW5_completed.ipynb`
3. If you are reviewing multiclass classification, then read Exercise 3.2 and compare it mentally to Chapter `7` Equation `(7.23)`
4. Use Exercise 4 only if you specifically want kernelization practice
5. Use Exercise 1 and Exercise 3.3 as applied deep-learning intuition, not as core Chapter 6-10 review

## Bottom line

If your goal is to study the textbook material you provided, HW5 is not equally valuable across all exercises.

- most textbook-aligned part: Exercise 2
- best Chapter 7 callback: Exercise 3.2
- useful but beyond provided chapters: Exercise 1, Exercise 3.1, Exercise 3.3, Exercise 4, Exercise 5
