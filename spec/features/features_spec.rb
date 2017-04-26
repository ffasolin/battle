feature 'home page' do

    scenario 'should return names & hit points' do
      visit('/')
      fill_in('player_1', with: 'Filipe')
      fill_in('player_2', with: 'Filipe')
      click_button('Submit')
      expect(page).to have_content('Filipe 60pts vs. Filipe 60pts')
    end
end
