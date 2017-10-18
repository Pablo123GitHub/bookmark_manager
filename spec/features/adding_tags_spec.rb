feature 'Adding tags' do

  scenario 'I can add a single tag to a new link' do
    visit '/links/new'
    fill_in 'url', with: 'http://google.com'
    fill_in 'title', with: 'Google'
    fill_in 'tags', with: 'google'

    click_button 'Create link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('google')
  end

  scenario 'I can add more than one tags' do
    visit '/links/new'
    fill_in 'url', with: 'http://google.com'
    fill_in 'title', with: 'Google'
    fill_in 'tags', with: 'google searchEngine'

    click_button 'Create link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('google', 'searchEngine')
  end
end
