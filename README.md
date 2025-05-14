# us-covid-vaccination-sql-tableau
# U.S. COVID-19 Vaccination Trends (SQL + Tableau Public Project)
- This project explores U.S. COVID-19 vaccination trends using SQL for data and Tableau Public
# Tools Used
- MySQL
- Tableau Public
- Microsoft Excel (Web Version for initial viewing)
- Kaggle (data source)
  # Project Objectives
  - Clean and Prepare raw COVID-19 vaccination data using MySQL
  - Analyze the 7-day trends and vaccinations rates by age group
  - Visualize insights with Tableau dashboards
    # Step 1: Data Cleaning in MySQL
    - Key Cleaning Steps:
    - Remove Duplicates
    - Checked for and handled nulls
    - Added a primary key column
    - Exported the cleaned dataset as a '.csv'
    # See the full cleaning steps here -->
    # Step 2: Visualization in Tableau Public
    - I designed multiple visualizations:
    - Line chart for 7-Day Average Case Trend Over Time
    - Line chart for Vaccination Progress Over Time
    - Bar chart for Vaccination Completed by Age Group
      # View the Tableau Public Dashboard -->
      # Data Source
      - Kaggle Dataset -->
      ## Challenges Faced
      - Primary Key issues:My dataset didn't come with a unique identifier, so I had to create one manually to handle duplicates.
      - Duplicate deletion error:MySQL returned error code 1288 when trying to delete duplicates using a CTE, so I used an alternative method with a temporary table.
      - NULL Detection:I made syntax mistakes while checking for NULL values and learned the correct way to write conditional aggregation queries.
      - Chart Formatting issue in Tableau: Tableau Public initially displayed the wrong chart types (like Gantt instead line).I had to troubleshoot the axis formatting and adjust container layout.
      - Dashboard Layout: My dashboard layout breaking after publishing. It took trial and error using "Tiled" layout and setting dashboard size to "Fit All" to get a clean look.
        ## Key Takeaways from the project
        - Stronger understanding of data cleaning with sql
        - Gained experience in publishing visual dashboards to Tableau Public
        - Learned how to prep data across tools for analysis storytelling
          # Next Steps
          - I plan to explore more datasets with SQL and Tableau Public and add more projects to my portfolio.
          - In addition, I want to incorporate excel along with SQL and Tableau into future projects and add it to my portfolio.
