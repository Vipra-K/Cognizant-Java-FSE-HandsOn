# Exercise 2: E-commerce Platform Search Function

## Objective
Implement Linear Search and Binary Search to search products in an e-commerce platform.

## Classes
- Product.java
- SearchAlgorithms.java
- SearchTest.java

## Algorithms
### Linear Search
- Best Case: O(1)
- Average Case: O(n)
- Worst Case: O(n)

### Binary Search
- Best Case: O(1)
- Average Case: O(log n)
- Worst Case: O(log n)

## Analysis
- Linear Search checks each product one by one, making it suitable for small or unsorted datasets.
- Binary Search repeatedly divides the search space in half, making it much faster for large datasets.
- Binary Search requires the array to be sorted before searching.

## Conclusion
Binary Search is the better choice for large, sorted product lists because it performs significantly fewer comparisons than Linear Search.