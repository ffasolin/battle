feature 'home page' do
    it 'should return string in home page' do
      visit('/')
      expect(page).to have_content 'Testing infrastructure working!'
    end
end
