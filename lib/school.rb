require 'pry'

class School

  attr_accessor :roster

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end

  def initialize(name)
    @name = name
    @roster = {}
  end

   def add_student(student, grade)
       @roster[grade] ||= []
       @roster[grade] << student
   end
end
