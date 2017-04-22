guesscounter = 0
number = rand(1..100)
guess = nil
cheat = false
hints = 0

class String
  def is_i?
    !!(self =~ /\A[-+]?[0-9]+\z/)
  end
end

while guess != number
  puts "I have generated a random number for you to guess, what is your guess?"
  guess = gets.chomp
if guess.is_i? == true
  if guess.to_i < number then puts "Your guess is lower than the number"
  guesscounter = guesscounter + 1
  else puts "Your guess is greater than the number"
  guesscounter = guesscounter + 1
  end
end

if guesscounter == 5 then puts "For a hint, please enter 'hint'." end

if guess == "(c)" || guess == "(c)heat" then puts "The number is #{number}."
  cheater = true
  end
if guess == "hint"
  if hints == 0
    puts "You have one hint remaining."
    if number % 2 == 0 then puts "The number is even."
    else puts "The number is odd"
    end
  end
  if hints == 1
    puts "That was your last hint."
    if number > 50 then puts "The number is above 50."
    else puts "The number is below 50."
    end
  end
hints = hints + 1
end
if guess.to_i == number then puts "That is the correct number."
if guesscounter == 1 then puts "It took you #{guesscounter} guess. "
else puts "It took you #{guesscounter} guesses." end
if cheater == true then puts "But, you cheated. :(" end
break
end
end
