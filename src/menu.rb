# class Menu
#     def initialize(title, story)
#         @title = title
#         @story = story
#     end 
#     def get_items
#         return @menu_options
#     end
# end

class Menu
    def initialize 
        @menu_options = []
    end
    def add_option(title, story)
        menu_option = MenuOption.new(title, story)
        @menu_options << menu_option
    end
    def get_story(title)
        option = @menu_options.find {|menu_option| menu_option.title == title }
        return title.story
    end
    def get_story
        return @story
    end
end