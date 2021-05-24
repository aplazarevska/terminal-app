class Part3
    def initialize(title, body)
       @title = title
       @body = body
    end
    def display_details()
       puts "\n Correct! You are now reading part 3 of '#@title'".colorize(:color => :white, :background => :red)
       puts "\n #@body".colorize(:blue)
       puts "\n The End".colorize(:blue)
    end
end