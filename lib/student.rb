class Student
  attr_accessor :name, :grade, :id 

def self.create_table
  sql = <<-SQL
  CREATE TABLE students(
    id INTEGER PRIMARY KEY 
    name TEXT,
    grade INTEGER
  )
  SQL
  DB[:conn].execute(sql)
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
 end 
end
