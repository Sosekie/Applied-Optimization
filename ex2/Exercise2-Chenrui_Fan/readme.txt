In the code part, I used RandomNumberGenerator rng(min, max) to generate two random points p1 and p2, used n_evals to generate a batch of theta, and then verified all the points one by one to see if they satisfy "_function->eval_f(p) > theta * _function->eval_f(p1) + (1.0 - theta) * _function->eval_f(p2)". function->eval_f(p1) + (1.0 - theta) * _function->eval_f(p2)" condition.

When a point occurs that does not satisfy the condition, print that point and return false; if all points satisfy it, return true.

Relevant screenshots of the experiment have been placed in the folder.

"Applied Optimization Exercise 2 - Convex Functions.pdf" is the answer to the question written by latex.