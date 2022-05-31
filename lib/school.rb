 require "pry"
 class School
    def initialize(name)
        @name = name
        @roster = Hash.new
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if roster.include?(grade)
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
        @roster.each {|grade, names| names.sort!}
    end
end