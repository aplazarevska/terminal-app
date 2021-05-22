class PersonalisedStory
    def initialize(female_name, profession, male_relation, derogative_word, male_name_and_last_name, adjective_of_a_country, company_name, another_country)
        @female_name = female_name
        @profession = profession
        @male_relation = male_relation
        @derogative_word = derogative_word
        @male_name_and_last_name = male_name_and_last_name
        @adjective_of_a_country = adjective_of_a_country
        @company_name = company_name
        @another_country = another_country
    end
    def new_story()
        puts "Enter a female name (example: Nancy):"
        female_name = gets.chomp
        puts "Enter a profession (example: coder):"
        profession = gets.chomp
        puts "Enter a male relation (example: husband):"
        male_relation = gets.chomp
        puts "Enter a derogative word (example: coward):"
        derogative_word = gets.chomp
        puts "Enter a male name and last name (example: Henry Wood):"
        male_name_and_last_name = gets.chomp
        puts "Enter a adjective for a country (example: Indian):"
        adjective_of_a_country = gets.chomp
        puts "Enter a company name (example: Coder Academy):"
        company_name = gets.chomp
        puts "Enter a name of a country (example: England):"
        another_country = gets.chomp
        puts "\n A Personalised Adventure".colorize(:red)
        puts "\n #{female_name} is the prime suspect of killing her #{profession} #{male_relation}. The #{male_relation} has been moody and depressed occasionally in the past few years, and felt that #{female_name} doesn’t reciprocate his love. One evening #{female_name} went out with a neighbour and came back distressed. #{female_name} and her #{male_relation} had a fight and the #{male_relation} accused her that she is #{derogative_word}. The #{male_relation} cried out, there was a crash, and #{female_name} screamed. The driver entered the room through the window, found the #{male_relation} dead in his blood, and her fainted. He went to call police but found the key was not in the locked door from the inside. A club was found that no one has seen before. Sherlock Holmes accepted the case, and he thinks there was third person in the room who took the key. Seems there was also an animal there, carnivore bigger than a weasel. The neighbour revealed that when they went out they came across a bent, deformed old man with a wooden box, that #{female_name} recognised and wanted to talk to, but soon after left annoyed. The description fits a certain #{male_name_and_last_name}.
        #{male_name_and_last_name} was a #{profession} in the #{adjective_of_a_country} company ‘#{company_name}’, and was a rival to the #{male_relation} for #{female_name}’s affection. The #{male_relation} in that time worked for the same company, and messed with #{male_name_and_last_name}’s work, so #{male_name_and_last_name} was fired, and found out that the #{male_relation} betrayed him to get closer to #{female_name}. Living a tough life #{male_name_and_last_name} became deformed, and went back to #{another_country} as an old man. Accidentally he saw #{female_name} that fatal day. He followed her home and saw the argument from the window. The #{male_relation} saw #{male_name_and_last_name} through the window and recognised him.
        When the #{male_relation} saw #{male_name_and_last_name} through the window he got so terrified that he got internal bleeding and died, and #{female_name} fainted. #{male_name_and_last_name} seeing what happened wanted to get help, took the key, but decided to just flee so not to become a suspect. #{male_name_and_last_name} took his mongoose and went out throughout the window. #{male_name_and_last_name} lost the walking stick. The coroner found out that the #{male_relation} died before hitting his head on the table while falling down after experiencing the internal bleeding."    
    end
end