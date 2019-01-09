require 'pry'

class School

      attr_accessor :roster, :add_student, :grade

    def initialize(name)
      @name = name
      @roster = {}
    end



    def add_student(name, grade)

      if @roster[grade] == nil
        @roster[grade] = []
          @roster[grade] << name
      else
          @roster[grade] << name
      end
    end

      def grade(grade)
      @roster[grade]
      end

     def sort
       sorted_roster = {}
       @roster.each {|grade, student_array| sorted_roster[grade] = student_array.sort}
       sorted_roster
     end
end


school = School.new("coolmine")


# binding.pry

p "eof"
