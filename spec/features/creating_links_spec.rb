feature "submitting a new link" do

scenario "add a new link and title to the bookmarks" do
visit'/links'
save_link
expect(current_path).to eq('/links/new')
within 'ul#links' do
expect(page).to have_content('bbc')
end
end
end
