# HW3 Study Guide

## What this folder is for

`HW3` is the first directory that lines up very directly with the provided textbook chapters.
Treat it as a study bridge into:

- Chapter `6`: linear two-class classification
- Chapter `7`: linear multi-class classification

## Core textbook anchors

- two-class Softmax cost: Equation `(6.25)`
- two-class Perceptron cost: Equation `(6.33)`
- cross-entropy / log-error two-class cost: Equation `(6.12)`
- regularization pattern for linear two-class models: Equation `(6.47)`
- multi-class Perceptron cost: Equation `(7.16)`
- multi-class Softmax cost: Equation `(7.23)`
- OvA fusion rule: Equation `(7.12)`

## File-by-file annotations

### `HW3.pdf`

Role:

- assignment handout

Why it matters:

- this is the best starting point for understanding what each notebook in the folder was trying to do
- it explicitly cites Equation `(6.25)` and Equation `(6.33)` for Exercise 1

### `HW3.ipynb`

Role:

- draft / partially completed homework notebook

How to use it:

- compare it against `HW3_completed.ipynb` to see what was missing
- useful for self-testing: try to finish pieces without looking at the completed file

### `HW3_completed.ipynb`

Role:

- main solved notebook in this folder

Study path through the notebook:

#### Exercise 1: Breast-cancer classification

Key code ideas:

- linear score model
- Softmax fit with Equation `(6.25)`
- Perceptron fit with Equation `(6.33)`
- misclassification tracking
- direct logistic-regression / cross-entropy variant using Equation `(6.12)`

What to pay attention to:

- the same dataset is optimized with different costs
- cost history and misclassification history are not the same object
- the notebook asks you to compare malignant-case mistakes specifically, which is an early lesson in class-sensitive evaluation

Best textbook sections to pair with it:

- Section `6.3` for Softmax / logistic classification
- Section `6.4` for the Perceptron

#### Exercise 2: Spambase Softmax vs Perceptron

Key equations:

- Equation `(6.25)` and Equation `(6.33)`

Why this exercise matters:

- it moves from a small didactic dataset to a real higher-dimensional dataset
- it reinforces the same comparison from Exercise 1 under more realistic feature counts

What to study:

- how normalization / preprocessing enters before fitting
- how confusion-matrix style summaries complement a single miscount curve

#### Exercise 3: UCI breast-cancer data wrangling

Role:

- dataset retrieval and cleanup exercise

How to use it:

- treat it as preparation for running the same classification machinery on externally sourced data
- the core theory is still Chapter 6 classification, even though the visible work here is mostly preprocessing

#### Exercise 4: Credit-risk classification

Key equation:

- Equation `(6.33)` in the provided notebook implementation

Study takeaway:

- same linear-classification machinery, new dataset
- good file for reviewing how a confusion matrix is built after optimization

### `HW3_ex5.ipynb`

Role:

- multiclass extension notebook

Direct textbook connection:

- multi-class Perceptron cost in Equation `(7.16)`

What to study:

- how the model output changes from one scalar score to one score per class
- how the decision boundary plot now represents `argmax` over several linear functions instead of a single zero contour

### `3class_data.csv`

Role:

- toy dataset for the multiclass notebook

Study use:

- pair this with `HW3_ex5.ipynb` and Chapter 7's multi-class geometry

### `breast_cancer_data.csv`

Role:

- local two-class dataset used in Exercise 1

Study use:

- remember the last row stores labels and the columns are samples

### `credit_dataset.csv`

Role:

- local credit-risk dataset used for two-class classification

Study use:

- useful for reviewing how feature scaling changes optimization stability

### `spambase_data.csv`

Role:

- large real dataset for the spam experiment

Study use:

- revisit this file when you want a realistic example of applying Equation `(6.25)` and Equation `(6.33)` beyond toy data

### `*.png`

Role:

- saved figure outputs

What each one represents:

- `credit_perceptron_cost_miscount.png`: Perceptron training behavior on credit data
- `logistic_cost_miscount.png`: logistic / cross-entropy behavior
- `multiclass_perceptron_cost.png`: multi-class Perceptron training summary
- `softmax_perceptron_cost_miscount.png`: breast-cancer comparison
- `softmax_perceptron_spambase_cost_miscount.png`: spambase comparison

Use them as quick-recall figures after you understand the underlying notebook.

## Best way to review HW3

1. Read Exercise 1 in `HW3.pdf`
2. Work through `HW3_completed.ipynb`
3. Revisit Chapter 6 equations `(6.12)`, `(6.25)`, and `(6.33)`
4. Then open `HW3_ex5.ipynb` and pair it with Chapter 7 Equation `(7.16)`
