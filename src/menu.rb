# def menu
# end

require_relative "./menu_options.rb"
require 'ruby_figlet'


class Menu
    def initialize
    end

    def welcome
        using RubyFiglet 
        welcome = "Welcome \n reader."
        welcome.art!
        welcome.each_char do |char|
            putc char
            $stdout.flush
            sleep 0.01
        end
    end

    def welcome_message
        welcome_message = "\n You are about to set on a reading adventure. \n Where the story will take you depends solely on you.\n"
        welcome_message.each_char do |char|
            putc char
            $stdout.flush
            sleep 0.05
        end
    end

    def press_enter
        print "\n \n Press enter to proceed."
        enter = gets
        if enter == '\n'
            puts @menu_options
        end
    end

    def menu
        menu_options = ["1. The Adventure of the Crooked Coder", "2. The Adventure of the Ruby Gem", "3. Personalised Story", "4. Exit"]
        menu_options.each do|title|
            p "#{title}"
        end
    end

end


# class Menu
#     def initialize(title)
#         @title = title
#         @story = story
#     end 
#     def get_items
#         return @menu_options
#     end
# end

# class Menu
#     def initialize 
#         @menu_options = []
#     end
#     def add_option(title, story)
#         menu_option = MenuOption.new(title, story)
#         @menu_options << menu_option
#     end
#     def get_story(title)
#         option = @menu_options.find {|menu_option| menu_option.title == title }
#         return title.story
#     end
#     def get_story
#         return @story
#     end
# end