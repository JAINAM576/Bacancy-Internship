import os

# Directory to store SQL files
output_dir = "."
os.makedirs(output_dir, exist_ok=True)

# Example problem statement and query (you can customize later)
problem_statement = ""
query = ""

# Generate files from problem_3.sql to problem_30.sql
for i in range(1, 17):
    filename = f"problem_{i}.sql"
    filepath = os.path.join(output_dir, filename)

    content = f"""-- ==============================
-- PROBLEM STATEMENT
-- {problem_statement}
-- ==============================


-- QUERY
{query}
"""

    with open(filepath, "w", encoding="utf-8") as f:
        f.write(content)

print("✅ SQL files generated successfully from problem_3 to problem_30!")
