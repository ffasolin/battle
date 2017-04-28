feature '#switch_turns' do
  scenario "shows players' turns" do
    sign_in_and_play
    expect(page).to have_content("Filipe's turn!")
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_button('hit')
    visit('/play')
    expect(page).to_not have_content("Filipe's turn!")
    expect(page).to have_content("Paul's turn!")
  end
end
