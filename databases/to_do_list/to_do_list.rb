require 'sqlite3'
# require faker if i need to generate fake names

db = SQLite3::Database.new("list.db")

create_list_table_cmd = <<-SQL 
    CREATE TABLE IF NOT EXISTS list (
        id INTEGER PRIMARY KEY,
        task VARCHAR(255),
        date_needed VARCHAR(255),
        notes VARCHAR(255)
        )
    SQL
# could use DATE instead of VARCHAR but formatting must be accurate, and it's long, might be 
# easier to use varchar for now CHECK BACK ON THIS BEFORE COMPLETION

db.execute(create_list_table_cmd)

def add_task(db, task, date_needed, notes)
    db.execute("INSERT INTO list (task, date_needed, notes) VALUES (?, ?, ?)", [task, date_needed, notes])
end

def complete_task(db, id)
    db.execute("DELETE FROM lists WHERE id=id")
end
# is it id or list_id?

def update_task(db, task, date_needed)
    db.execute("UPDATE task SET task=? WHERE id=?")
end

# def get_list_id(task)

add_task(db, "buy foam roller", "ASAP", "buy on amazon? if not buy at gym")