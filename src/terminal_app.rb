# require_relative "./menu_options.rb"
require 'ruby_figlet'
using RubyFiglet 


require "tty-prompt"
prompt = TTY::Prompt.new


welcome = "Welcome \n reader."
welcome.art!

welcome.each_char do |char|
    putc char
    $stdout.flush
    sleep 0.01
end

welcome_message = "\n You are about to set on a reading adventure. \n Where the story will take you depends solely on you.\n"

welcome_message.each_char do |char|
    putc char
    $stdout.flush
    sleep 0.05
end

print "\n Press enter to proceed."

enter = gets

menu_options = ["1. The Adventure of the Crooked Coder", "2. The Adventure of the Ruby Gem", "3. Personalised Story", "4. Exit"]

optionz = prompt.select("\n If you want to read a book choose option 1 or 2. If you want to personalise a book choose option 3.") do |title|
    title.choice "1. The Adventure of the Crooked Coder"
    title.choice "2. The Adventure of the Ruby Gem"
    title.choice "3. Personalised Story"
    title.choice "4. Exit"
end

story1 = "Here is story 1"
story2 = "Here is story 2"
personalised = "Your story"

if optionz == "1. The Adventure of the Crooked Coder"
    p story1
elsif optionz == "2. The Adventure of the Ruby Gem"
    p story2
elsif optionz == "3. Personalised Story"
    p personalised
elsif optionz == "4. Exit" 
    p "Thank you for reading!"
end