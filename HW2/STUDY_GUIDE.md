# HW2 Study Guide

## What this folder is for

`HW2` sits between generic optimization practice and the more textbook-facing work in Chapters `6` through `10`.
Some parts are still warm-up material, but Exercise 4 in particular connects nicely to the transformed-regression viewpoint used later in Chapter 10.

## File-by-file annotations

### `HW21.ipynb`

This is the main study file in `HW2`.

#### Exercise 1: Momentum gradient descent

What it covers:

- gradient descent with momentum on a quadratic objective

How to place it in the textbook:

- the exact source section for momentum is outside the provided Chapter 6-10 PDFs
- still, the notebook is useful background for understanding why later chapters compare optimizers rather than just models

Study takeaway:

- optimization behavior depends on curvature, not only on the formula for the cost

#### Exercise 2: Normalized gradient descent

What it covers:

- normalized gradient descent on a toy objective

Direct textbook connection:

- Section `A.3` is referenced explicitly by Chapter 6 Exercise `6.1`
- that exercise minimizes the Least Squares logistic-regression cost in Equation `(6.9)` with normalized gradient descent

Study takeaway:

- this notebook is where you should build intuition for "gradient direction only" updates before seeing them applied to classification costs

#### Exercise 3: Student debt linear regression

What it covers:

- building the design matrix
- solving linear least squares with the normal equations
- plotting the fitted line

Direct textbook connection:

- after any feature or output transformation, Chapter 10 repeatedly returns to an affine model of the form shown with appended inputs in Equation `(10.3)`
- this notebook is the simplest version of that story with the identity feature map

Study takeaway:

- remember that once the transformed relationship is linear, the problem becomes a standard least-squares fit again

#### Exercise 4: Kleiber's law

What it covers:

- importing a power-law dataset
- taking logs
- fitting a line in transformed coordinates
- mapping the interpretation back to the original variables

Direct textbook connection:

- this is structurally the same idea as Chapter 10's transformed regression problems
- compare it especially to the Moore's law exercise, where a log transform is used so the transformed output is fit by the affine model in Equation `(10.3)`

Study takeaway:

- if the original relation looks multiplicative or power-law-like, a log transform can convert it into a linear least-squares problem

### `pandas.ipynb`

This notebook is a data-wrangling side exercise, not a core Machine Learning Refined theory notebook.

How to use it:

- review it only if dataframe operations are slowing you down in later projects
- it does not map tightly to the Chapter 6-10 equations

### `kleibers_law_data.csv`

Role:

- raw dataset for the transformed-regression exercise

Study use:

- keep in mind that the notebook's main idea is not the data file itself
- the point is the log transform and the resulting linear fit

### `student_debt_data.csv`

Role:

- raw dataset for the student-debt least-squares exercise

Study use:

- use it to verify how the design matrix is assembled and how a line is fit to raw observations

## What to memorize from HW2

- normalized gradient descent is an algorithmic choice, separate from the cost formula
- once you have a linear relationship in transformed coordinates, ordinary least squares applies
- Chapter 10 style feature/output engineering is valuable mainly because it creates that linear structure
