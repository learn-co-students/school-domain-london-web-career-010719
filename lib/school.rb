class School
  attr_reader :name, :roster

  def initialize (name)
    @name = name
    @roster = {}
  end

  def add_student(name,grade)
    @roster[grade] = [] if !@roster[grade]
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster = Hash[ @roster.sort_by { |key, val| key }]
    @roster.map {|key,value| value.sort!}
    @roster
  end
end
