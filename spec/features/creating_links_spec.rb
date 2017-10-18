feature 'Creating links' do
  scenario 'I can create a new link' do
    visit '/links/new'
    fill_in 'url', with: 'http://www.testingfeaturetesttestnotawebsite.com/'
    fill_in 'title', with: 'This is a test'
    click_button 'Create link'

    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('This is a test')
  end
end
end
