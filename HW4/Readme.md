
# Q6

## Problem Description

Consider the values of possible coalitions for four players given below. The value of the overall coalition for the players is \(240\). Based on the Shapley value criterion and given the values of the sub-coalitions, determine each player's share in the overall coalition.

## Coalition Values

v(1)         = 6
v(2)         = 12
v(3)         = 0
v(4)         = 18
v(1, 2)      = 24
v(1, 3)      = 48
v(1, 4)      = 60
v(2, 3)      = 48
v(2, 4)      = 72
v(1, 2, 3)   = 120
v(1, 2, 4)   = 89
v(1, 3, 4)   = 150
v(2, 3, 4)   = 129
v(1, 2, 3, 4)= 240


## Part B

In the following, we explain how to calculate the Shapley value based on the repeated procedure presented by John Harsanyi. We use this method to calculate the Shapley value for each player from within the overall coalition. To determine the algorithm for the solution, proceed with the following steps and demonstrate your work:

* Assuming a coalition \((N; v)\):

1. Select a coalition whose value is not zero and divide this value among the coalition members. (This amount is considered as the share taken by the members in the coalition).
2. Remove this coalition from the set of coalitions and include its value in the total amount.
3. Repeat the above steps until all coalitions have been considered.
4. Finally, calculate the Shapley value for each player based on the given values.
