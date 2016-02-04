# insert tests to be run on Capybara

require 'capybara/dsl'
require 'selenium-webdriver'

feature 'Enter names' do # feature = Capybara terminology (same as 'describe' in rspec)

	before do
	include Capybara::DSL
	Capybara.default_driver = :selenium
end

	scenario 'submitting names' do  # scenario = Capybara terminology (same as 'it' in rspec)
		visit('/')  # to do any action, need to visit website first
		fill_in :player_1, with: 'Bjoern' # emulating user experience, getting Capybara to input the name 'Dave'
		fill_in :player_2, with: 'Elaine' # emulating user experience... input the name 'Mittens'
		click_button 'Submit'  #emulating user experience...  click submit
		expect(page).to have_content 'Bjoern vs. Elaine'  #TEST = ensure that expectations meet what Capybara inputted (as if it was the user)
	end
end



# User Stories
##############

# visit the home page
# fill in a text field with a name
# fill in a second text field with a name
# click a Submit button

