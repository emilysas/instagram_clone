feature 'Post' do
  scenario 'it tells you if there are no posts' do
    visit '/posts'
    expect(page).to have_content 'No posts yet!'
  end
end