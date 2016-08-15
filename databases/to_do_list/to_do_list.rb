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
    db.execute("DELETE FROM list WHERE id=id")
end
# this method deletes EVERYTHING when used on line 42
# is it id or list_id?

def update_task(db, task, date_needed)
    db.execute("UPDATE task SET task=? WHERE id=?")
end

# def get_list_id(task)
# need a method that shows whats in the list 
def display_tasks(db)
    tasks = db.execute("SELECT * FROM list")
    tasks.each do |item|
        puts "ID: #{item[0]} To do: #{item[1]}"
    end
end

add_task(db, "buy foam roller", "ASAP", "buy on amazon? if not buy at gym")
add_task(db, "physical therapy appt", "Tuesday @ 12", "Terra Linda")
add_task(db, "buy new backpack", "ASAP", "buy on amazon?")
add_task(db, "haircut", "Saturday 8/27 @ 3", "Cooper Alley w/ Jen")
add_task(db, "laundry", "ASAP", "NA")
# where NA could i leave blank?
add_task(db, "buy all weather mats for car", "ASAP", "amazon or through Audi directly")
# complete_task(db, 1) deletes entire thing 
display_tasks(db)
