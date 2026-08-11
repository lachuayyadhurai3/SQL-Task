SQL Tasks & Database 

A collection of SQL tasks, queries, and database exercises designed to demonstrate practical SQL skills, database concepts, and problem-solving abilities.

About the Repository

This repository contains SQL scripts developed while learning and practicing database management and SQL querying.

The tasks cover fundamental to advanced SQL concepts, including data definition, data manipulation, filtering, aggregation, joins, subqueries, constraints, and analytical queries.

The primary objective is to build strong SQL fundamentals and apply them to real-world data scenarios.

Technologies & Tools
- SQL
- MySQL (update if you are using PostgreSQL, SQL Server, Oracle, etc.)

«The folder structure may evolve as additional SQL tasks and projects are added.»

Topics Covered
Database Fundamentals - Task 1
- Database creation
- Table creation
- Data types
- Primary keys
- Foreign keys
- Constraints
- "ALTER", "DROP", and "TRUNCATE"

Data Manipulation - Task 2
- "INSERT"
- "UPDATE"
- "DELETE"
- "SELECT"

Data Filtering & Sorting - Task 3
- "WHERE"
- "AND" / "OR"
- "IN"
- "BETWEEN"
- "LIKE"
- "IS NULL"
- "ORDER BY"
- "DISTINCT"

Aggregate & Grouping Operations - Task 4
- "COUNT()"
- "SUM()"
- "AVG()"
- "MIN()"
- "MAX()"
- "GROUP BY"
- "HAVING"

Joins - Task 5
- "INNER JOIN"
- "LEFT JOIN"
- "RIGHT JOIN"
- Self Joins
- Multiple-table joins

Advanced SQL - Task 6
- Subqueries
- Correlated subqueries
- Common Table Expressions (CTEs)
- Window functions
- "CASE" statements
- Conditional aggregation
- Views
- Stored procedures (if applicable)

Learning Objectives
his repository focuses on developing the ability to:
- Write clean and efficient SQL queries
- Retrieve and manipulate relational data
- Design and work with relational databases
- Analyze datasets using SQL
- Solve business-oriented data problems
- Understand relationships between database tables
- Apply SQL concepts to practical scenarios
- Improve query optimization and problem-solving skills

Example Query
SELECT
    department,
    COUNT(*) AS employee_count,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000
ORDER BY average_salary DESC;

This query demonstrates the use of:
- Aggregate functions
- "GROUP BY"
- "HAVING"
- "ORDER BY"
- Column aliases

How to Use
1. Clone the Repository
git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY.git

2. Open the SQL Files
Navigate to the relevant folder and open the ".sql" file using your preferred SQL editor or database management tool.

3. Create the Database
Run the database/schema scripts first, followed by the sample data scripts.

4. Execute the Queries
Run the queries against the created database and review the results.

Future Improvements
Planned additions may include:
- Real-world SQL case studies
- Data analysis projects
- Query optimization examples
- Complex joins and subqueries
- Window-function-based analysis
- Database design projects
- Performance optimization
- Business-oriented SQL challenges

Author
Lakshmana Narayanan A

Aspiring Data/SQL Professional
- GitHub: github.com/lachuayyadhurai3
- LinkedIn: https://www.linkedin.com/in/

Feedback & Contributions
Suggestions and feedback are welcome. If you find an issue or have an idea for improving the queries or project structure, feel free to open an issue or submit a pull request.
