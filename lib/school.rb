

class School
  attr_reader :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end
  
  def add_student(students, grade)
    if  @roster.has_key?(grade) 
      @roster[grade] << students
    else
       @roster[grade] = [students]
    end
  end
  
  def grade(value)
     @roster.fetch(value)
  end
  
  def sort 
    @roster.each do |grades, students|
      @roster[grades] = students.sort
    end
  end
  
end