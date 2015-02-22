feature 'Comments' do
  
  before(:each) do
    Post.create(image: open(Rails.root+'spec/fixtures/images/profilepic.png'), title: 'Me')
  end

  scenario 'a user can leave comments under a post' do
    visit '/posts'
    click_link 'Me'
    click_link 'Comment'
    fill_in 'Comment', with: 'Good job'
    click_button 'Leave Comment'
    expect(page).to have_content 'Good job'
    expect(current_path).to be '/posts'
  end
  
end