class Part3
    def initialize(title, body)
       @title = title
       @body = body
    end
    def display_details()
       puts "\n Correct! You are now reading part 3 of '#@title' \n".colorize(:red)
       puts "\n #@body"
    end
 end