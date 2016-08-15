require 'sqlite3'

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
# easier to use varchar for now 

db.execute(create_list_table_cmd)
# adds task to your to do list
def add_task(db, task, date_needed, notes)
    db.execute("INSERT INTO list (task, date_needed, notes) VALUES (?, ?, ?)", [task, date_needed, notes])
end
# allows you to delete a task once it's been completed
def complete_task(db, id)
    db.execute("DELETE FROM list WHERE id=?", [id])
end

# allows you to update a task (i.e. the task itself, the due date)
def update_task(db, id, task, date_needed, notes)
    db.execute("UPDATE list SET task=?, date_needed=?, notes=? WHERE id=?", [task, date_needed, notes, id])
end

# method will show what is in the to do list
def display_tasks(db)
    tasks = db.execute("SELECT * FROM list")
    tasks.each do |item|
        puts "ID: #{item[0]} To do: #{item[1]} Due: #{item[2]} Notes: #{item[3]}"
    end
end

#tester code
#add_task(db, "buy foam roller", "ASAP", "buy on amazon? if not buy at gym")
#add_task(db, "physical therapy appt", "Tuesday @ 12", "Terra Linda")
#add_task(db, "buy new backpack", "ASAP", "buy on amazon?")
#add_task(db, "haircut", "Saturday 8/27 @ 3", "Cooper Alley w/ Jen")
#add_task(db, "laundry", "ASAP", "NA")
#add_task(db, "buy all weather mats for car", "ASAP", "amazon or through Audi directly")

#complete_task(db, 1)

#update_task(db, 3, "buy new backpack", "no later than Sunday", "look on Amazon")

#display_tasks(db)

# USER INTERFACE
puts "Welcome to your To Do List! Please enter 'add task' to add to your To Do List. 
Or type 'view' to see your full To Do List. If you would like to update a task, type 'update', 
or if you've completed an item and would like to remove it from you list, type 'complete'.
When done, type 'done'."
done = false
while done == false do 
    input = gets.chomp
    if input == "add task"
        puts "What is the task you would like to add?"
        task = gets.chomp
        puts "When is this task due by?"
        date_needed = gets.chomp
        puts "Do you have any notes you would like to add for this task? (Type 'NA' if none,"
        notes = gets.chomp
        add_task(db, task, date_needed, notes)
        puts "What would you like to do next?"
    elsif input == "view"
        display_tasks(db)
        puts "What would you like to do next?"
    elsif input == "update"
        display_tasks(db)
        puts "This is your to do list, please enter the ID of the task you would like to update."
        id = gets.chomp 
        puts "What would you like to change the new task to?"
        task = gets.chomp
        puts "When is the task due by?"
        date_needed = gets.chomp
        puts "Please add any notes, else type 'NA'."
        notes = gets.chomp
        update_task(db, id, task, date_needed, notes)
        puts "What would you like to do next?"
    elsif input == "complete"
        display_tasks(db)
        puts "What is the ID of the task you have completed?"
        id = gets.chomp
        complete_task(db, id)
        puts "What would you like to do next?"
    elsif input == "done"
        done = true
    else
        puts "Invalid input."
    end
end


