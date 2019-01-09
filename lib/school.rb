class School
  attr_accessor :add_student, :roster
  attr_reader :school_name
  
  def roster 
    @roster = {}
  end
  
  def initialize(school_name)
    @school_name = school_name
    roster
  end

  def add_student(name, grade)
    @roster[grade] = [name]
  end
  
  def grade
  end

  def sort 
  end
end
