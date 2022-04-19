class Employee

    def initialize(name, salary, title, boss=nil)
        @name, @salary, @title, @boss = name, salary, title, boss    
        @direct_reports = []
    end

    def bonus (multiplier)
        @salary * multiplier
    end

    attr_reader :name,:salary,:title,:boss
end


class Associate < Employee


end



class Manager < Employee

    def initialize (name, salary, title, boss=nil)
        super
    end

    def direct_reports
        Employee.employee_list.each do |el|
            if el.boss == self.name
                @direct_reports << el
            end
        end
    end

attr_reader :direct_reports
end

def total_salary(name)
    total_salary = 0
    if self.is_a?(Associate)
        total_salary += self.bonus
    else 
        total_salary += self.salary + total_salary()
    end
    total_salary
end


# class Employee_list

#    def initialize

#         employee_list = []
#         employee_list << @name
#     end

# end


p ned = Manager.new("ned", 1000000,"founder")
p darren = Manager.new("darren", 78000,"TA Manager","Ned")
p shawna = Associate.new("shawna", 12000, "TA", "Darren")
p david = Associate.new("david", 10000, "TA", "Darren")
puts "-------------------------------------------------------"
# p Employee.employee_list
puts "-------------------------------------------------------"
# p darren.direct_reports

# ned.bonus(5) # => 500_000
# darren.bonus(4) # => 88_000
# p david.bonus(3) # => 30_000