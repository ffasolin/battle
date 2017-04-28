feature 'home page' do
  scenario 'should return names & hit points' do
    sign_in_and_play
    expect(page).to have_content('Filipe 60pts vs. Paul 60pts')
  end
end
