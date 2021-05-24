class Inspiration
    def initialize(title, original_title, author)
       @title = title
       @original_title = original_title
       @author = author
    end
    def inspired_by()
       puts "\n The story '#@title' was inspired by '#@original_title' by #@author.".colorize(:color => :white, :background => :blue)
       puts "\n Thank you for reading!".colorize(:red)
    end
end
