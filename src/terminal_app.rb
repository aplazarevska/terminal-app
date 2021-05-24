require_relative "./story.rb"
require_relative "./part2.rb"
require_relative "./part3.rb"
require_relative "./inspiration.rb"
require_relative "./personalised.rb"

require 'ruby_figlet'
using RubyFiglet 

require "tty-prompt"
prompt = TTY::Prompt.new

require "tty-box"

require 'colorize'

# welcome = "Welcome \n reader."
# welcome.art!

# welcome.each_char do |char|
#     putc char
#     $stdout.flush
#     sleep 0.01
# end

# welcome_message = "\n You are about to set on a reading adventure. \n Where the story will take you depends solely on you.\n"

# welcome_message.each_char do |char|
#     putc char
#     $stdout.flush
#     sleep 0.05
# end

print "\n Press enter to proceed.".colorize(:red)

enter = gets

options = prompt.select("\n If you want to read a book choose option 1 or 2. If you want to personalise a book choose option 3.") do |title|
    title.choice "1. The Adventure of the Crooked Coder"
    title.choice "2. The Adventure of the Ruby Gem"
    title.choice "3. Personalised Story"
    title.choice "4. Exit"
end

case
when options == "1. The Adventure of the Crooked Coder"
    story1 = Story.new("The Adventure of the Crooked Coder", "Nancy is the prime suspect of killing her coder husband. The husband has been moody and depressed occasionally in the past few years, and felt that Nancy doesn’t reciprocate his love. One evening Nancy went out with her neighbour and came back soon after. Unusually, she asked her maid for tea in a room she rarely used. Her husband heard her come back and went to join her. His driver saw him enter the room, but that was the last time anyone saw him. The maid heard argument between the two when she brought the tea, and Nancy said the name David. Nancy also accused her husband that he is a coward. What the husband replied was not clear. The husband cried out, there was a crash, and Nancy screamed. The driver entered the room through the window, found the man dead in his blood, and her fainted. He went to call police but found the key was not in the locked door from the inside. A club was found that no one has seen before. Sherlock Holmes accepted the case, and he thinks there was third person in the room who took the key. Seems there was also an animal there, carnivore (but it didn’t attack the bird in the cage), and bigger than weasel. The neighbour revealed that when they went out they came across a bent, deformed old man with a wooden box, that Nancy recognised and wanted to talk to, but soon after left annoyed. The description fits a certain Henry Wood.")
    story1.display_details()
    loop do
        menu_story1_1 = prompt.select("\n Who was Henry Wood?") do |answer|
            answer.choice "A coder in the Indian company 'Rebellion of 1857'."
            answer.choice "A local musician who did not want to perform at Nency and her husband's wedding."
        end
        if menu_story1_1 == "A coder in the Indian company 'Rebellion of 1857'."
            story1_part2 = Part2.new("The Adventure of the Crooked Coder", "He was a coder in the Indian company ‘Rebellion of 1857’, and was a rival to the husband for Nancy’s hand. The husband in that time worked for the same company, and messed with Henry’s code, so Henry was fired, and later found out that the husband betrayed him so he could get Nancy. Living a tough life Henry became deformed, and went back to England as an old man. Accidentally he met Nancy that fatal day. He followed her home and saw the argument from the window. The husband saw Henry through the window and recognised him.")
            story1_part2.display_details()
            loop do
                menu_story1_2 = prompt.select("\n How did the husband die?") do |answer|
                    answer.choice "When the husband saw Henry through the window he recognised him, got so terrified that he got internal bleeding and died."
                    answer.choice "Henry struck him on the head with an Indian crickat bet."    
                end
                if menu_story1_2 == "When the husband saw Henry through the window he recognised him, got so terrified that he got internal bleeding and died."
                    story1_part3 = Part3.new("The Adventure of the Crooked Coder", "When the husband saw Henry through the window he recognised him, got so terrified that he got internal bleeding and died, and Nancy fainted. Henry seeing what happened wanted to get help, took the key, but decided to just flee so he would not become a suspect. He took his mongoose and went out through the window. In the process he lost his walking stick. The coroner found out that the husband died before he hit his head on the table while falling down after experiencing the internal bleeding. David was reference to a biblical character king who sent a love rival to war just to get his wife.")
                    story1_part3.display_details()
                    puts "\n Press enter to continue.".colorize(:red) 
                    enter = gets
                    original1 = Inspiration.new("The Adventure of the Crooked Coder", "The Adventure of the Crooked Man", "Arthur Conan Doyle") 
                    original1.inspired_by()
                    break
                else
                    box = TTY::Box.frame(width: 40, height: 8, title: {top_left: " NameError "}) do
                        "\n Crickat bet? I bet you have a spelling error!"
                    end
                    print box    
                    puts "Try again! Press enter to continue.".colorize(:red) 
                    enter = gets
                end
            end
        break
        else 
            box = TTY::Box.frame(width: 40, height: 8, title: {top_left: " ScriptError "}) do
                "\n Seriously? A musician who didn’t want to perform at their wedding?? You would not make a very good script writer!"
            end
            print box    
            puts "Try again! Press enter to continue.".colorize(:red) 
            enter = gets
        end
    end
when options == "2. The Adventure of the Ruby Gem"
    story2 = Story.new("The Adventure of the Ruby Gem", "Alexander Holder is a coder who made loan to a rich person and got Ruby Gems bundle as collateral. Alexander Holder installed the bundle on his laptop. That night he hears noise and sees his son doing something on the laptop.")
    story2.display_details()
    loop do
        menu_story2_1 = prompt.select("\n What happened next?") do |answer|
            answer.choice "His geek niece then comes and faints after seeing the laptop in the son’s hands."
            answer.choice "His dog starts barking and the son drops the laptop and it breaks."
        end
        if menu_story2_1 == "His geek niece then comes and faints after seeing the laptop in the son’s hands."
            story2_part2 = Part2.new("The Adventure of the Ruby Gem", "His geek niece then comes and faints after seeing the laptop in the son’s hands. The laptop falls down and is damaged. Three Gems are deleted, and Alexander Holder goes to Sherlock Holmes. The son doesn’t appear suspect to Holmes. He wonders: why isn’t the son giving a statement, how could he bend the laptop with his hands. The reputation of Alexander Holder depends on solving this case. Sherlock investigates.")
            story2_part2.display_details()
            loop do
                menu_story2_2 = prompt.select("\n What did Sherlock Holmes find out?") do |answer|
                    answer.choice "The son wanted to delete the Gems cos he wanted to be seen as better coder than his father."
                    answer.choice "The niece is in a league with a hacker."    
                end
                if menu_story2_2 == "The niece is in a league with a hacker."
                    story2_part3 = Part3.new("The Adventure of the Ruby Gem", "The niece is in a league with a hacker, but she doesn’t know that he is a hacker. The jealous hacker wants to steal the Gems, so Alexander Holder can’t finish his Ruby app. The son out of love for the niece did not tell that she passed the laptop to the criminal through the window. The laptop was broken when the son fought the hacker for it. Before the son could intervene, the hacker managed to steal three Gems. The Gems are returned after Sherlock Holmes threatens the thief with a gun. ‘Stop, or I will shoot’, said Holmes, and the hacker gave him back the Gems.")
                    story2_part3.display_details()
                    puts "\n Press enter to continue.".colorize(:red) 
                    enter = gets
                    original2 = Inspiration.new("The Adventure of the Ruby Gem", "The Adventure of the Beryl Coronet", "Arthur Conan Doyle") 
                    original2.inspired_by
                    break
                else
                    box = TTY::Box.frame(width: 40, height: 8, title: {top_left: " FatalError "}) do
                        "\n What a preposterous idea! No one can be better coder than Alexander Holder!"
                    end
                    print box   
                    puts "Try again! Press enter to continue.".colorize(:red) 
                    enter = gets 
                end
            end
        break
        else 
            box = TTY::Box.frame(width: 40, height: 8, title: {top_left: " NoMemoryError "}) do
                "\n Who mentioned any dog in this story? You have a bad memory!"
            end
            print box    
            puts "Try again! Press enter to continue.".colorize(:red) 
            enter = gets
        end
    end
when options == "3. Personalised Story"
    your_story = PersonalisedStory.new(@female_name, @profession, @male_relation, @derogative_word, @male_name_and_last_name, @adjective_of_a_country, @company_name, @another_country, @animal)
    your_story.new_story()
    puts "\n Press enter to continue.".colorize(:red) 
    enter = gets
    original1 = Inspiration.new("A Personalised Adventure", "The Adventure of the Crooked Man", "Arthur Conan Doyle") 
    original1.inspired_by()
else
    puts "Thank you for reading!".colorize(:red)
end