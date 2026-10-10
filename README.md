# 🏅 Olympics Data Analysis Using SQL Server

## 📌 Project Overview

This project analyzes Olympic Games data using Microsoft SQL Server to explore athlete participation, medal achievements, team performance, and Olympic trends.

The project demonstrates practical SQL skills by solving eight analytical questions using real-world Olympic datasets.

## 🎯 Project Objectives

- Identify teams with the highest gold medal counts.
- Analyze silver medal performance across teams and years.
- Find athletes with specific medal-winning patterns.
- Compare athlete achievements across Summer and Winter Olympics.
- Explore consecutive Olympic medal-winning performances.

## 📂 Dataset

This project uses two CSV files:

| File | Description |
|---|---|
| `athletes.csv` | Athlete information, including ID, name, sex, height, weight, and team. |
| `athlete_events.csv` | Olympic participation details, including athlete ID, games, year, season, city, sport, event, and medal. |

The datasets are imported into SQL Server for analysis.

## 🔍 Business Questions & Analysis

The project answers the following questions:

1. Which team has won the maximum gold medals over the years?
2. For each team, what is the total number of silver medals, and in which year did the team win the maximum silver medals?
3. Which player has won the maximum gold medals among players who have never won a silver or bronze medal?
4.For each year, identify the player or players who won the maximum number of gold medals, and display the names of all tied players as a comma-separated list.
5. In which year did India first win a gold, silver, and bronze medal, and in which sport?
6. Which players have won gold medals in both Summer and Winter Olympics?
7. Which players have won gold, silver, and bronze medals in a single Olympic year?
8. Which players won gold medals in the same event in three consecutive Summer Olympics, considering Olympic years from 2000 onward?

## 🛠️ Tools & Technologies

- **Database:** Microsoft SQL Server
- **SQL Environment:** SQL Server Management Studio (SSMS)
- **Version Control:** GitHub
- **Data Format:** CSV

## 🧠 SQL Concepts Used

- SELECT, WHERE, ORDER BY
- GROUP BY and HAVING
- Aggregate functions such as COUNT, SUM, and MAX
- JOIN operations
- Common Table Expressions (CTEs)
- Window functions: ROW_NUMBER(), RANK(), LAG(), and LEAD()
- Conditional logic using CASE
- String aggregation using STRING_AGG()
- Subqueries and filtering with IN / NOT IN

## 📈 Key Learnings

- Writing SQL queries to solve analytical problems.
- Analyzing medal counts by team, athlete, year, season, and sport.
- Using window functions to rank results and compare consecutive Olympic years.
- Applying grouping and aggregation to identify patterns in sports data.
- Organizing SQL work in a GitHub portfolio.

## 📁 Project Files

- `README.md` — Project overview and documentation.
- SQL script — Contains the eight analytical queries.
- `athletes.csv` — Athlete dataset.
- `athlete_events.csv` — Olympic events dataset.

## 🚀 How to Use This Project

1. Download or clone this repository.
2. Import the CSV datasets into Microsoft SQL Server.
3. Ensure the tables and column names match those used in the SQL script.
4. Open the SQL script in SQL Server Management Studio.
5. Execute the queries to explore the Olympic data.

## 👩‍💻 Author

**Sonali Patil**

GitHub: [patilsonali7](https://github.com/patilsonali7)

## 🔗 Repository

[Olympics SQL Analysis — GitHub](https://github.com/patilsonali7/olympics-sql-analysis)
