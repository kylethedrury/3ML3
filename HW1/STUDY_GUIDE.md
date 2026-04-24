# HW1 Study Guide

## What this folder is for

`HW1` is mostly optimization warm-up material.
Relative to the textbook material provided in this workspace, treat this folder as prerequisite mechanics that support later chapters rather than a direct Chapter 6-10 homework set.

The strongest later connections are:

- the repeated use of gradient-based optimization in Chapter 6 classification costs such as Softmax in Equation `(6.25)` and Perceptron in Equation `(6.33)`
- the use of `autograd` in Chapter 8 Exercise `8.5`, where the linear autoencoder cost in Equation `(8.17)` is differentiated automatically

## File-by-file annotations

### `a1.ipynb`

Main topics:

- plotting cost histories
- normalizing random directions
- estimating the fraction of descent directions
- coordinate search
- randomized coordinate descent

How to study it:

- In the early cells, focus on why direction normalization matters.
  Later chapters assume you are comfortable comparing descent directions and step sizes.
- The descent-direction experiment is a geometric precursor to classification margins and signed distances.
  That geometric viewpoint becomes central in Chapter 6 and Chapter 7, especially when interpreting linear classifiers.
- The coordinate-search and coordinate-descent cells are useful as conceptual preparation for later selective / blockwise optimization ideas.
  They are not the same algorithm as the boosting procedure in Section `9.6.1`, but they train the same habit of updating only restricted coordinates at a time.

Best study use:

- reread this notebook before Chapter 9 if coordinate-wise updates feel abstract
- use it to remember the difference between "search over directions" and "differentiate a cost"

### `HW1.6.ipynb`

Main topics:

- `autograd.numpy`
- `grad`
- generic gradient descent on a scalar objective

Direct textbook connection:

- This notebook is a clean prerequisite for Chapter 8 Exercise `8.5`, where the linear autoencoder cost in Equation `(8.17)` is minimized with automatic differentiation.
- It is also useful background for any notebook where the gradient is not derived by hand.

How to study it:

- Pay attention to the separation between the objective `g(w)` and the optimizer.
  That pattern is reused throughout the later notebooks.
- Compare the three step lengths.
  This is the simplest place to build intuition for why fixed step sizes can behave very differently even on the same cost.

### `Hw1.ipynb`

Main topics:

- random search
- exploratory optimization behavior

How to study it:

- Treat this as a baseline "optimization without gradients" notebook.
- It is most useful for contrast:
  later chapters overwhelmingly prefer gradient-based methods because costs like the Softmax cost `(6.25)` or multiclass Softmax `(7.23)` are smooth enough to differentiate and optimize efficiently.

## What to memorize from HW1

- unit-normalized search directions remove scale ambiguity
- descent directions are local objects defined by the current gradient
- coordinate updates are cheap but restricted
- `autograd` lets you reuse one optimizer on many objectives

## What not to over-focus on

- exact plotting boilerplate
- one-off numpy syntax details

The lasting value of `HW1` is optimization intuition, not the specific notebook formatting.
