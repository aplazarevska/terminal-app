# require_relative "../menu.rb"

# describe "menu" do
#     it 'exists as a method' do
#         expect(defined? menu).to eql("method")
#     end
#     it 'displays the menu options' do
#         expect("\n").to eq(@menu_options)
#     end
# end

# describe ""

require_relative '../terminal_app.rb'
require_relative '../menu.rb'

describe Menu do
    it 'exists as a method' do
        expect(defined? menu).to eql("method")
    end
    # it 'should be able to display the menu options after pressing enter key' do
    #     title = "The Adventure of the Ruby Gem"
    #     story = "AH is a coder, makes loan to rich person and gets ruby gems bundle as collateral. AH takes installs it on his laptop. That night he hears noise, sees his son doing something on the laptop. His geek niece then comes and faints after seeing the laptop in the son’s hands."
    #     menu = Menu.new
    #     menu.add_option(title, story)
    #     expect(gets.'\n').to eq(@menu_options)
    # end
    it "displays welcome message" do
        welcome = "Welcome \n reader."
        expect(@menu.welcome).to eq(welcome)
    end
    it "should display the menu" do
        menu = {}
    end
end 
