feature 'home page' do

    scenario 'should return names & hit points' do
      sign_in_and_play
      expect(page).to have_content('Filipe 60pts vs. Filipe 60pts')
    end

    # scenario 'hit player 2' do
    #   sign_in_and_play
    #   click_button('hit')
    #   expect(page).to have_content('Filipe 60pts vs. Filipe 50pts')
    # end
end
