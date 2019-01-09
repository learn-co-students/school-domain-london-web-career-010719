class School
  attr_accessor :school_name, :roster
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

# a ||= b is a "conditional assignment operator"
# "if a is undefined or falsey (false or nil), then evaluate b and set a to the result".

  def add_student(name, grade)
    # roster[grade] ||= []
    # roster[grade] << name
    
    roster[grade] = [] if roster[grade] == nil
    roster[grade] << name
  end

  def grade(grade_num)
    roster[grade_num]
  end

  def sort 
    roster.each do |grade, name_arr|
      name_arr.sort!
    end
  end
end
