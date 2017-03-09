
feature 'see a list of links' do

  scenario 'shows a list of links ' do
    Link.create(url: 'https://bbc.co.uk', title: 'bbc')
    visit '/links/new'
    expect(page.status_code).to eq(200)
     within 'ul#links' do
    expect(page).to have_content('bbc')
  end
 end
end
