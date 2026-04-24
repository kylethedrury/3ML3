# HW4 Study Guide

## What this folder is for

`HW4` connects directly to the later textbook material provided in this workspace.
It is best read alongside:

- Chapter `7`: mini-batch learning for multiclass classification
- Chapter `8`: PCA, linear autoencoders, and K-means
- Chapter `10`: nonlinear models and, more loosely, later neural-network work

## Core textbook anchors

- mini-batch learning: Section `7.8` and Appendix `A.5`
- multi-class Perceptron: Equation `(7.16)`
- linear autoencoder: Equation `(8.17)`
- PCA least-squares factorization: Equation `(8.29)`
- compact PCA representation: Equation `(8.30)`
- K-means quality measure: Equation `(8.28)`
- nonlinear two-class Softmax in transformed coordinates: Equation `(10.31)`

## File-by-file annotations

### `HW4.pdf`

Role:

- assignment handout

Why it matters:

- this file tells you exactly which textbook examples each exercise was aiming to reproduce
- Exercise 3 explicitly points you to Equation `(8.17)`
- Exercise 4 explicitly points you to Figure `8.7` / Example `8.4`

### `HW41_completed.ipynb`

Role:

- main solved notebook in the folder

Study path through the notebook:

#### Exercise 2: MNIST digits in pure Python

Direct textbook connection:

- Section `7.8` on stochastic and mini-batch learning
- the notebook cost is the multi-class Perceptron in Equation `(7.16)`

What to focus on:

- the batch loop
- the distinction between batch size `200` and full-batch training
- the per-digit error analysis after fitting

Important note:

- if you compare this notebook to the Chapter 7 notebook work in the main workspace, notice that Chapter 7 Exercise `7.11` used the multi-class Softmax cost `(7.23)`, while this homework notebook uses the multi-class Perceptron `(7.16)`

#### Exercise 3: Autoencoder

Direct textbook connection:

- Equation `(8.17)` for the linear autoencoder

What to focus on:

- why `W` is not treated as an independent optimization variable
- how
  `W*(C) = (C^T C)^(-1) C^T X`
  is recomputed from the current encoder matrix
- why the learned subspace should align with the PCA plane

This is one of the cleanest notebooks in the repo for understanding the relation between PCA and linear autoencoders.

#### Exercise 4: PCA

Direct textbook connection:

- Example `8.4`
- Equation `(8.29)` and Equation `(8.30)`

What to focus on:

- centering the data first
- computing principal components from the covariance matrix
- encoding data in the PCA basis and interpreting the rotated coordinates

#### Exercise 5: K-means clustering

Direct textbook connection:

- Section `8.5`
- Equation `(8.28)` for the intra-cluster distance used in the scree plot

What to focus on:

- assignment step versus centroid-update step
- why repeated restarts matter
- how the elbow in the scree plot is used to justify `K`

#### Exercise 6: Fraud detection

Role in the provided textbook context:

- this part extends beyond the most directly provided Chapter 6-10 material because it uses Keras models / fcNNs
- still, the logistic-regression baseline connects naturally to Chapter 6's binary classification viewpoint, especially the binary cross-entropy / log-error discussion around Equation `(6.12)`

How to study it:

- use it as a "next step" notebook after mastering linear classifiers
- do not use it as your first review file for exam prep on Chapters 6-8

### `HW41.ipynb`

Role:

- draft / incomplete version of the main homework notebook

Best use:

- compare it to `HW41_completed.ipynb` if you want to practice filling in missing code yourself

### `Encoder2DSubspace.ipynb`

Role:

- starter notebook for the autoencoder exercise

How to use it:

- read it before the completed version to see the original low-rank-factorization setup
- then compare it with the proper autoencoder form based on Equation `(8.17)`

### `Encoder2DSubspace_completed.ipynb`

Role:

- focused solved version of the autoencoder exercise

Direct textbook connection:

- Equation `(8.17)`

Best study use:

- this is the shortest path to understanding the "optimize `C`, recover `W*(C)` in closed form" idea

### `2d_span_data.csv`

Role:

- 2D dataset used for the PCA reproduction task

Study use:

- pair it with Exercise 4 and Chapter 8 Example `8.4`

### `blobs.dat`

Role:

- clustering dataset for the K-means exercise

Study use:

- pair it with Section `8.5` and the scree-plot interpretation based on Equation `(8.28)`

### `*.html`

Role:

- rendered notebook exports

Best use:

- fast reading when you do not need to rerun code
- especially helpful for reviewing figures without opening Jupyter

## Best way to review HW4

1. Read `HW4.pdf`
2. Work through `HW41_completed.ipynb` Exercises 2-5
3. Use `Encoder2DSubspace_completed.ipynb` as a focused review of Equation `(8.17)`
4. Revisit Chapter 8 Example `8.4`, Equation `(8.17)`, Equation `(8.29)`, Equation `(8.30)`, and Equation `(8.28)`
