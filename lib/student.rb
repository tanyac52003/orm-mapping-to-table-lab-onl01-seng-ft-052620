class Student
  attr_accessor :name, :grade 
  attr_reader :id 

def initialize(name,grade)
  @name = name
  @grade = grade 
end 

def self.create_table
  sql = <<-SQL
  CREATE TABLE students(
    id INTEGER PRIMARY KEY, 
    name TEXT,
    grade INTEGER
  )
  SQL
  DB[:conn].execute(sql)
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
 end 
 
 def self.drop_table
    sql = <<-SQL
  DROP TABLE students
  SQL
  DB[:conn].execute(sql)
 end 
end
