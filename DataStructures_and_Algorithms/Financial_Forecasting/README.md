Exercise: Financial Forecasting Using Recursion
Objective

Implement a recursive algorithm to predict the future value of an investment based on a constant annual growth rate.

Class
FinancialForecast.java
Algorithm
Recursive Forecast
Best Case: O(n)
Average Case: O(n)
Worst Case: O(n)
Analysis
Recursion solves the problem by breaking it into smaller subproblems until the base case is reached.
Each recursive call calculates the value for one year and uses it to compute the next year's value.
The algorithm is simple and easy to understand for problems with repetitive calculations.
Since one recursive call is made for each year, the time complexity is O(n).
The recursive solution uses additional memory because each function call is stored in the call stack.
The solution can be optimized using memoization or an iterative approach to reduce stack usage and improve efficiency.
Conclusion

Recursion provides a clean and intuitive way to perform financial forecasting. However, for a large number of years, an iterative solution or memoization is preferred because it avoids excessive recursive calls and uses memory more efficiently.