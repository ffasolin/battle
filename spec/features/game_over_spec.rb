feature 'You Lose confirmation message' do
  describe '#game_over' do
    it 'ends game when hp is 0' do
      sign_in_and_play
      11.times { click_button('hit'); visit('/play') }
      visit('/game-over')
      expect(page).to have_content('Paul, you lose!')
    end
  end
end
