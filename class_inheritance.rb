require 'byebug'
class Employee
    attr_reader :name, :salary, :title, :boss

    def initialize(name, salary, title, boss=nil)
        @name, @salary, @title = name, salary, title
        @boss = boss 
        @boss.employees << self if !@boss.nil?
    end

    def bonus (multiplier)
        @salary * multiplier
    end

end


class Manager < Employee
    attr_accessor :employees

    def initialize (name, salary, title, boss=nil)
        super
        @employees = []
    end

    def bonus(multiplier)
        count = 0
        #debugger
        @employees.each do |employee|
            count += employee.salary
            if employee.is_a?(Manager)
                employee.employees.each do |em|
                    count += em.salary
                end
            end
        end
        count * multiplier
    end

    #def total_salary(name)
    #debugger
    #total_salary = 0
    #self.employees.each do |employee|
    #    if employee.is_a?(Manager)
    #        total_salary += self.bonus + total_salary(self.employees)
    #    else 
    #        total_salary += self.bonus
    #    end
    #end
    #total_salary
end

    #def direct_reports
    #    Employee.employee_list.each do |el|
    #        if el.boss == self.name
    #            @direct_reports << el
    #        end
    #    end
    #end




# class Employee_list

#    def initialize

#         employee_list = []
#         employee_list << @name
#     end

# end


ned = Manager.new("Ned", 1000000,"founder")
darren = Manager.new("Darren", 78000,"TA Manager",ned)
shawna = Employee.new("Shawna", 12000, "TA", darren)
david = Employee.new("David", 10000, "TA", darren)
puts "-------------------------------------------------------"
# p Employee.employee_list
puts "-------------------------------------------------------"
p shawna.boss
p darren.boss
p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
 p david.bonus(3) # => 30_000