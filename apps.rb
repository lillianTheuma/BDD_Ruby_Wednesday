require('./lib/rps')
require('./lib/find_and_replace')

puts('Welcome to our program')
puts('Which function would you like to try today?')
puts("1. Rock Paper Scissors Win Calculator")
puts("2. text Find and Replace")

puts("Please input your selection:")
response = gets.chomp

case response
when "1"
  puts `clear`
  puts("Rock Paper Scissors")
  puts("Player 1, select your hand:")
  hand0 = gets.chomp
  puts `clear`
  puts("Rock Paper Scissors")
  puts("Player 2, select your hand:")
  hand1 = gets.chomp
  puts `clear`
  puts("Rock Paper Scissors")
  game = RPS.new()
  response = game.wins(hand0, hand1)
  case response
  when 0
    puts("Player 1 wins!")
  when 1
    puts("Player 2 wins!")
  when 2
    puts("A tie!")
    puts("(really though? You're both looking at the screen, how did you tie?)")
  when "false"
    puts("Invalid input")
  end
when "2"
  puts `clear`
  puts("Find and Replace program")
  puts("Would you like to replace a file(1), or text(2)?")
  type = gets.chomp
  case type
  when "1"
    puts `clear`
    puts("Find and Replace Program")
    puts("Please input the file name you would like to edit")
    puts("Warning: this can edit any file, use at your own risk")
    file = gets.chomp
    file_text = File.read(file)

    puts `clear`
    puts("Find and Replace Program")
    puts("Please input the search query")
    search = gets.chomp
    puts("Please input the replacement text")
    replacement = gets.chomp

    File.write(file, file_text.find_and_replace(search, replacement))

  when "2"
    puts `clear`
    puts("Find and Replace Program")
    puts("Please input the string you would like to modify")
    plaintext = gets.chomp
    puts("Please input the search query")
    search = gets.chomp
    puts("Please input the replacement text")
    replacement = gets.chomp
    response = plaintext.find_and_replace(search, replacement)

    puts `clear`
    puts("Find and Replace Program")
    puts("Your Result: #{response}")
  end
end
