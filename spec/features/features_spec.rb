feature 'home page' do
    scenario 'should return string in home page' do
      visit('/')
      fill_in('name', with: 'Filipe')
      click_button('Submit')
      expect(page).to have_content('Filipe')
    end
end
