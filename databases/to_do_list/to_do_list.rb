require sqlite3
# require faker if i need to generate fake names

db = sqlite3::Database.new("list.db")

create_table_cmd = <<-SQL 
    CREATE TABLE lists (
        id INTEGER PRIMARY KEY,
        task VARCHAR(255),
        date_needed VARCHAR(255)
        )
    SQL
# could use DATE instead of VARCHAR but formatting must be accurate, and it's long, might be 
# easier to use varchar for now CHECK BACK ON THIS BEFORE COMPLETION

db.execute(create_table_cmd)

db.execute("INSERT INTO lists (task, date_needed) VALUES ("buy foam roller", "ASAP")")


