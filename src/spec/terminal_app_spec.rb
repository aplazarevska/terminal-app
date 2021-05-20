require_relative '../menu.rb'

describe Menu do
    it 'should be able to display the start of a story' do
        title = "The Adventure of the Ruby Gem"
        story = "AH is a coder, makes loan to rich person and gets ruby gems bundle as collateral. AH takes installs it on his laptop. That night he hears noise, sees his son doing something on the laptop. His geek niece then comes and faints after seeing the laptop in the son’s hands."
        menu = Menu.new
        menu.add_option(title, story)
        expect(menu.get_story(title)).to eq(story)
    end
end 