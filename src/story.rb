class Story
    def initialize(title, body)
       @title = title
       @body = body
    end
    def display_details()
       puts "\n You are reading '#@title' \n"
       puts "\n #@body"
    end
 end