class Part2
    def initialize(title, body)
       @title = title
       @body = body
    end
    def display_details()
       puts "\n Correct! You are now reading part 2 of '#@title'".colorize(:color => :white, :background => :red)
       puts "\n #@body".colorize(:blue)
    end
end