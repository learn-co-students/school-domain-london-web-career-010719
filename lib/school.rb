class School

attr_accessor :name, :roster


  def initialize(name)
      @name = name
      @roster = {}
  end

  def add_student (name, grade)
     if @roster.keys.include?(grade)
    @roster[grade] << name
   else
     @roster[grade] = [name]
   end
 end


 def grade (grade)
    @roster[grade]
 end

def sort
@roster.each do |key, value|
  value.sort!
end
@roster
end


end
school = School.new("Bayside High School")
school.roster
