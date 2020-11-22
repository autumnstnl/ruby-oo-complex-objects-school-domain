class  School
attr_accessor :name, :school, :roster

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade]
           @roster[grade] << name
        else 
            @roster[grade] = [name]
        end
    end

    def grade(number)
        @roster.select do |grade, names|
            if number == grade
               return names
            end 
        end
    end

    def sort
        hash_roster = {}
        @roster.each do |grade, names|
            hash_roster[grade] = names.sort!
        end
        hash_roster
    end
end