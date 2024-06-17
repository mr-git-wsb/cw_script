class Calculator
    def add(a, b)
      a + b
    end
  
    def subtract(a, b)
      a - b
    end
  
    def multiply(a, b)
      a * b
    end
  
    def divide(a, b)
      return 'Error: Division by zero' if b == 0
      a / b.to_f
    end
  end
  
  if __FILE__ == $0
    calculator = Calculator.new
    loop do
      puts "Select operation: (1) Add (2) Subtract (3) Multiply (4) Divide (5) Exit"
      choice = gets.chomp.to_i
  
      unless (1..5).include?(choice)
        puts "Wrong input"
        next
      end
      break if choice == 5
  
      puts "Enter first number:"
      a = gets.chomp.to_f
      puts "Enter second number:"
      b = gets.chomp.to_f
  
      case choice
      when 1
        result = calculator.add(a, b)
      when 2
        result = calculator.subtract(a, b)
      when 3
        result = calculator.multiply(a, b)
      when 4
        result = calculator.divide(a, b)
      end
  
      puts "Result: #{result}"
    end
  end
  