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

feature 'Attacking' do

	scenario 'attack player 2 and confirm' do
		sign_in_and_play
		click_link 'Attack!'
		expect(page).to have_content 'Wim attacked Elaine!'
	end
end



