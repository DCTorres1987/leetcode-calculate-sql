# leetcode-calculate-sql

Hello Everyone,

Today I will be reviewing how I solved LeetCode Challenge, Calculate Salary, using SQL.
Objective: Write an SQL query to find the salaries of the employees after applying taxes.
The tax rate is calculated for each company based on the following criteria:

* 0% If the max salary of any employee in the company is less than 1000$.
* 24% If the max salary of any employee in the company is in the range [1000, 10000] inclusive.
* 49% If the max salary of any employee in the company is greater than 10000$.
* Return the result table in any order. Round the salary to the nearest integer.


Before coding, I made sure I did my calculations on how the taxes should be deducted. Then I did a basic select statement pulling in company_id, employee_id, employee_name, salary, and a max analytic function to grab the max salary based on the company id.

Next, I coded an outer select that will pull all this information and now my new column max_salary.
I can use a case statement based on the max salary to determine how much taxes should be calculated for each person.

Review file for final code.