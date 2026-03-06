🏥 Hospital Database Analysis Project (Summary)
📌 Project Overview

This project analyzes a hospital database composed of one fact table and eight dimension tables. The database represents the complete patient journey, including medical services, billing charges, insurance payments, and financial adjustments. The goal is to use SQL to explore and analyze healthcare financial data.

🎯 Project Objectives

The main objectives of this project are:

📊 Understand relationships between hospital data
🗄️ Create and manage a relational database
💻 Use SQL to explore and analyze data
📈 Perform aggregations and calculations
🧠 Answer real business questions using SQL

🗂️ Database Structure

The database follows a Star Schema structure:

📦 Fact Table: Contains transaction data such as charges, payments, units, and adjustments.

📚 Dimension Tables: Provide detailed information about:
👤 Patients
👨‍⚕️ Physicians
📋 CPT codes
🧬 Diagnosis codes
🏥 Clinics/Hospitals
📅 Dates
🌍 Locations
📉 Adjustment reasons

⚙️ Project Steps

1️⃣ Database Creation – Create the database and all tables in SQL Server.

2️⃣ Data Import – Import Excel datasets into the corresponding tables.

3️⃣ Add Constraints – Define primary keys and foreign keys to connect tables.

4️⃣ Data Exploration – Use SQL queries to inspect and understand the data.

5️⃣ Table Joins – Combine tables to analyze the complete patient journey.

6️⃣ SQL Analysis Queries – Perform analytical queries to answer business questions.

📊 Key Analyses

The project includes 10 SQL queries, such as:

💰 Counting charges greater than $100
👥 Calculating the number of unique patients
📋 Analyzing CPT codes and units
👨‍⚕️ Identifying physicians with Medicare claims
📈 Finding the specialty with the highest payments
🧬 Analyzing diagnoses containing the letter "J"
👶 Creating a demographic report by age groups
📉 Investigating credentialing-related financial adjustments

🛠️ Technologies Used

💻 SQL Server
📊 Microsoft Excel
🧾 SQL (T-SQL)
🗄️ Relational database design

✅ Conclusion:
This project helps develop practical skills in SQL, database management, and healthcare data analysis, while understanding how hospital financial data is structured and analyzed.
