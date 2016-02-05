# insert tests to be run on Capybara

feature 'Enter names' do # feature = Capybara terminology (same as 'describe' in rspec)

		# before do
		# include Capybara::DSL
		# Capybara.default_driver = :selenium
		# end

	scenario 'submitting names' do  
		sign_in_and_play
		expect(page).to have_content 'Wim vs. Elaine'  
	end

	scenario 'view hit points' do
		sign_in_and_play
		expect(page).to have_content 'Elaine: 1000HP'
	end
end



# User Stories
##############

# visit the home page
# fill in a text field with a name
# fill in a second text field with a name
# click a Submit button

