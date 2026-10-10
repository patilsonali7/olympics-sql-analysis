# 🏅 Olympics Data Analysis Using SQL Server

## 📌 Project Overview

This project focuses on analyzing Olympic Games data using Microsoft SQL Server. The goal is to explore athlete achievements, team performance, medal distributions, and trends across different Olympic Games.

This project includes eight SQL queries designed to solve analytical problems using Olympic athlete and event data.

## 🎯 Project Objectives

- Identify teams with the highest number of gold medals.
- Analyze silver medal performance by team and year.
- Identify athletes based on their medal-winning achievements.
- Compare gold medal achievements across different years and Olympic seasons.
- Analyze medal-winning patterns across consecutive Summer Olympics.

## 📂 Dataset Description

The project uses two CSV datasets:

### 1. `athletes.csv`

Contains athlete details such as:
- Athlete ID
- Name
- Sex
- Height
- Weight
- Team

### 2. `athlete_events.csv`

Contains Olympic participation and performance details such as:
- Athlete ID
- Games
- Year
- Season
- City
- Sport
- Event
- Medal

The datasets are imported into Microsoft SQL Server for analysis.

## 🔍 SQL Analysis Questions

This project answers the following questions:

1. Which team has won the maximum gold medals over the years?

2. For each team, what is the total number of silver medals, and in which year did the team win the maximum number of silver medals?

3. Which player has won the maximum number of gold medals among players who have never won a silver or bronze medal?

4. For each year, identify the player or players who won the maximum number of gold medals, and display the names of all tied players as a comma-separated list.

5. In which year did India first win a gold, silver, and bronze medal, and in which sport?

6. Which players have won gold medals in both Summer and Winter Olympics?

7. Which players have won gold, silver, and bronze medals in a single Olympic year?

8. Which players won gold medals in the same event in three consecutive Summer Olympics, considering Olympic years from 2000 onward?

## 🛠️ Tools and Technologies

- **Database:** Microsoft SQL Server
- **SQL Editor:** SQL Server Management Studio (SSMS)
- **Version Control:** Git and GitHub
- **Data Format:** CSV

## 🧠 SQL Skills Demonstrated

The project focuses on SQL techniques relevant to data analysis, including:

- Filtering and sorting using `WHERE` and `ORDER BY`
- Grouping and aggregation using `GROUP BY` and aggregate functions
- Filtering grouped results using `HAVING`
- Joining related tables using `JOIN`

