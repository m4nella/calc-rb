
# def get_int_values
   #[gets, gets].map{ |s| s.chomp.to_i }
 #end

 #puts "Would u like to [add], [multiply], or [subtract]?"
# response = gets.chomp

# case response.downcase
 #when 'add'
   #puts "Which numbers would u like to add?"
   #operator = :+

# when 'subtract'
   #puts "Which numbers would u ......"
  # operator = :-

 #when 'multiply'
   #puts "Which numbers would u ....""
  # operator = :*
 #end

# answer = get_int_values.inject(operator)
 #puts "The answer is ---------------- #{ answer }"

def getNumbers(aArray)
  # Method to take multiple integers as input from user.
    puts "Enter the numbers that you'd like me to use then type 'done' when you're finished, plz! "
    nextnum = 0
    # Creates nextnum as variable.
      while nextnum != "done"
        nextnum = gets.chomp!
          if nextnum == "done"
            puts "Calculating!"
          elsif nextnum != "0" && nextnum.to_i == 0
            # check non-numerical characters
            puts "That's not a number."
            nextnum = "done"
            # Break non-numerical character.
         else
            aArray << nextnum.to_i
            
        end
      end
  end
  
  def add(aArray)
    
    sum = 0
  
    aArray.each {|num| sum += num}
    
      puts "Your sum is #{sum}"
  end
  
  def subtract(aArray)
    dif = 0 + aArray[0] + aArray[0]
    aArray.each {|num| dif -= num} 
    puts "Your difference is #{dif}"
  end
  
  def multiply(aArray)
    prod = 1
    
    aArray.each {|num| prod *= num}
    puts "Your product is #{prod}"
  end
  
  def divide(aArray)
    quot = 1 * aArray[0] * aArray[0]
    aArray.each {|num| quot /= num }
    puts "Your quotient is #{quot}"
  end
  
  # run- program 
  puts "Welcome to Calculator."
  puts "Would you like to calculate something?"
  puts "y/n"
  firstIn = gets.chomp!.downcase
  
  if firstIn == "n"

    puts "Ohk :( see ya!"
  end
  if firstIn != "n" && firstIn != "y"
  
    # 

    puts "I don't get it. Mb! Try again later"
  end
  
  while firstIn == "y"
  # if  yes -> begin calc program loop.
  
  aArray = [] #  aArray zera.
  
  puts "What operation would you like to perform?"
  puts "Your options are: Add, Subtract, Multiply, Divide, Exponent, Square Root"
  puts "Please enter your choice:"
  choice = gets.chomp!.downcase
  
  case choice
  when "exponent"
    puts "Please enter the initial value (the one we'll be raising to a power)."
    starting_num = gets.chomp!

    if starting_num != "0" && starting_num.to_i == 0
    # check non-numerical characters
      puts "Hey, that's not a number."
    else
      starting_num = starting_num.to_i
      # value into integer
      puts "Please enter the power you'd like to raise it to."
      power = gets.chomp!
      if power != "0" && power.to_i == 0
        puts "Hey, that's not a number."
      else
        power = power.to_i
        exp = starting_num ** power
        puts "Your exponent is #{exp}"
      end
    end
  
  when "square root"
    puts "Please enter the number you'd like to find the square root of."
    to_square = gets.chomp!
    if to_square != "0" && to_square.to_i == 0
        puts "Hey, that's not a number."
    else
      to_square = to_square.to_i
      sqr = to_square ** (0.5)
      puts "Your square root is #{sqr}"
    end
  
  
  when "add"
    getNumbers(aArray)
    # 
    add(aArray)
  
  when "subtract"
    getNumbers(aArray)
    # 
    subtract(aArray)
  
  when "multiply"
    getNumbers(aArray)
    # 
    multiply(aArray)
  
  when "divide"
    getNumbers(aArray)
    #
    divide(aArray)
  
  else
    puts "That's not an option."
  end
  
  puts "Anything else?  ;) "
  # opcao break loop 
  
  puts "y/n"
  firstIn = gets.chomp.downcase
  # break while a nao ser q firstIn == y.
  
  if firstIn == "n"
  # final 1
    puts "k bye!"
  end
  
  if firstIn != "n" && firstIn != "y"
  # final 2
    puts "I don't get it. Shutting down."
  end
  
  end

