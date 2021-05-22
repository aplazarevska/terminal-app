require_relative "./story.rb"
require_relative "./part2.rb"

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

options = prompt.select("\n If you want to read a book choose option 1 or 2. If you want to personalise a book choose option 3.") do |title|
    title.choice "1. The Adventure of the Crooked Coder"
    title.choice "2. The Adventure of the Ruby Gem"
    title.choice "3. Personalised Story"
    title.choice "4. Exit"
end

case
when options == "1. The Adventure of the Crooked Coder"
    story1 = Story.new("The Adventure of the Crooked Coder", "Nancy is the prime suspect of killing her coder husband. The husband has been moody and depressed occasionally in the past few years, and felt that Nancy doesn’t reciprocate his love. One evening Nancy went out with her neighbour and came back soon after. Unusually, she asked her maid for tea in a room she rarely used. Her husband heard her come back and went to join her. His driver saw him enter the room, but that was the last time anyone saw him. The maid heard argument between the two when she brought the tea, and Nancy said the name David. Nancy also accused her husband that he is a coward. What the husband replied was not clear. The husband cried out, there was a crash, and Nancy screamed. The driver entered the room through the window, found the man dead in his blood, and her fainted. He went to call police but found the key was not in the locked door from the inside. A club was found that no one has seen before. Sherlock Holmes accepted the case, and he thinks there was third person in the room who took the key. Seems there was also animal there, carnivore (but didn’t attack the bird in a cage), and bigger than weasel. The neighbour revealed that when they went out they came across a bent, deformed old man with a wooden box, that Nancy recognised and wanted to talk to, but soon after left annoyed. The description fits a certain Henry Wood.")
    story1.display_details()
    menu_story1_1 = prompt.select("\n Who was Henry Wood?") do |answer|
        answer.choice "A coder in the Indian company 'Rebellion of 1857'"
        answer.choice "A local musician who did not want to perform at Nency and her husband's wedding"
    end
    if menu_story1_1 == "A coder in the Indian company 'Rebellion of 1857'"
        story1_part2 = Part2.new("The Adventure of the Crooked Coder", "He was a coder in the Indian company ‘Rebellion of 1857’, and was a rival to the husband for Nancy’s hand. The husband in that time worked for the same company, and messed with Henry’s code, so Henry was fired, and found out that the husband betrayed him so he could get Nancy. Living a tough life Henry became deformed, and went back to England as an old man. Accidentally he met Nancy that fatal day. He followed her home, saw the argument from the window. The husband saw Henry through the window and recognised him.")
        story1_part2.display_details()
    else 
        p "Wrong Answer"
    end
when options == "2. The Adventure of the Ruby Gem"
    story2 = Story.new("The Adventure of the Ruby Gem", "Alexander Holder is a coder who made loan to a rich person and got ruby gems bundle as collateral. Alexander Holder installed the bundle on his laptop. That night he hears noise, sees his son doing something on the laptop.")
    story2.display_details()
    menu_story2_1 = prompt.select("\n What happened next?") do |answer|
        answer.choice "His geek niece then comes and faints after seeing the laptop in the son’s hands."
        answer.choice "His dog starts barking and the son drops the laptop and it breaks."
    end
when options == "3. Personalised Story"
    personalised = "Your story"
    p personalised
else
    p "Thank you for reading!"
end