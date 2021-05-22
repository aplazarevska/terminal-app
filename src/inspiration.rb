class Inspiration
    def initialize(title, original_title, author)
       @title = title
       @original_title = original_title
       @author = author
    end
    def inspired_by()
       puts "The End".colorize(:red)
       puts "\n The story '#@title' was inspired by '#@original_title' by #@author.".colorize(:color => :red, :background => :white)
       puts "\n Thank you for reading!".colorize(:red)
    end
end
