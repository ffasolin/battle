feature '#attack' do
  scenario 'hit player 2' do
    sign_in_and_play
    click_button('hit')
    expect(page).to have_content('Paul was hit!')
  end
end
