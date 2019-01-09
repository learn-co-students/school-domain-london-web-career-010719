require 'pry'

class School

  attr_accessor :roster, :name

  def initialize(name)
    @school_name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)

    if @roster.has_key?(grade)
      @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, names_array|
      names_array.sort!
    end
  end

end
