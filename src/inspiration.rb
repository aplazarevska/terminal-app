class Inspiration
    def initialize(title, original_title, author)
       @title = title
       @original_title = original_title
       @author = author
    end
    def inspired_by()
       puts "The End"
       puts "\n The story '#@title' was inspired by '#@original_title' by #@author."
       puts "\n Thank you for reading!"
    end
end
