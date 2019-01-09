class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort()
    sorted_grades = {}
    @roster.each do |grade, students|
      sorted_grades[grade] = students.sort
    end
    sorted_grades
  end
end
