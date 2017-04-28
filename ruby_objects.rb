class Calculator
  attr_accessor :value1, :value2

  def intiliaze( value1, value2)
    @value1 = value1;
    @value2 = value2;
  end

  def add(value1, value2)
    value1 + value2
  end

  def subtract(value1, value2)
    value2 - value1
  end

  def multiply(value1, value2)
    value1 * value2
  end

  def divide(value1, value2)
  value2 / value2
  end
end

 calculate = Calculator.new();

 puts calculate.add(5, 10);
 puts calculate.subtract(5, 10);
 puts calculate.divide(5, 10);
 puts calculate.multiply(5, 10);


=begin
 Create a class to model an elevator

Instance Variables:

floor - the floor you are currently on
Instance Methods:

The following methods will change the floor instance variable:
go_up - tell the elevator to go up a floor
go_down - tell the elevator to go down a floor
floor - set this as a readable attribute to be accessed outside of the class definition
cheery_greeting - display to the terminal the current floor with a interesting greeting
Use the cheery_greeting method to display your greeting every time you change floors
Challenge: If you are looking for a challenge then try these.

Prevent the go_up method from going past the 12th floor
Prevent the go_down method from going below the 1st floor
=end

class Elevator
	def initialize
		puts "You're on the first floor"
		@floor = 1
	end

	def go_up
		puts "Going up, You're on Floor # #{@floor}"
		requestedfloor = gets.to_i

		if requestedfloor > @floor
			@floor = requestedfloor
			puts "You're currently on #{@floor}"
		else
			puts "This is incorrect, you must enter a higher floor number"
		end
	end

  def cheery_greeting
		puts "Welcome! You're currently on Floor # #{@floor}"
	end

	def go_down
    puts "Going down, You're on Floor # #{@floor}"
		requestedfloor = gets.to_i

		if requestedfloor < @floor
			@floor = requestedfloor
			puts "You're currently on floor:  #{@floor}"
		else
			puts "This is incorrect, you must enter a lower floor number"
		end
	end


end

first_ride = Elevator.new
first_ride.go_up
first_ride.go_down
first_ride.cheery_greeting
