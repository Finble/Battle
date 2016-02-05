# insert tests to be run on Capybara

require 'capybara/dsl'
require 'selenium-webdriver'

feature 'Enter names' do # feature = Capybara terminology (same as 'describe' in rspec)

		# before do
		# include Capybara::DSL
		# Capybara.default_driver = :selenium
		# end

	scenario 'submitting names' do  
		visit('/')  
		fill_in :player_1_name, with: 'Wim' 
		fill_in :player_2_name, with: 'Elaine' 
		click_button 'Submit'  
		expect(page).to have_content 'Wim vs. Elaine'  
	end

	scenario 'view hit points' do
		visit('/')
		fill_in :player_1_name, with: 'Wim'
		fill_in :player_2_name, with: 'Elaine'
		click_button 'Submit'
		expect(page).to have_content 'Elaine: 1000HP'
	end
end



# User Stories
##############

# visit the home page
# fill in a text field with a name
# fill in a second text field with a name
# click a Submit button

