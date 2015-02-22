feature 'Post' do
  scenario 'it tells you if there are no posts' do
    visit '/posts'
    expect(page).to have_content 'No posts yet!'
  end

  # scenario 'user can leave a post' do
  #   visit '/posts'
  #   click_link 'Add a photograph'
  #   attach_file 'Image' => (Rails.root + 'spec/fixtures/images/profilepic.png')
  #   fill_in 'Title', with: 'Me!'
  #   click_button 'Create Post'
  #   expect(page.find('img')['src']).to include('profilepic.jpg')
  #   expect(page).to have_content 'Me!'
  # end
  
  # scenario 'user can view posts' do
  #   Post.create(image: open(Rails.root+'spec/fixtures/images/profilepic.png'), title: 'Me')
  #   visit '/posts'
  #   click_link 'Me'
  #   expect(current_path).to be('/posts/#{id}')
  # end

  scenario 'user can edit posts' do
    Post.create(image: open(Rails.root+'spec/fixtures/images/profilepic.png'), title: 'Me')
    visit '/posts'
    click_link 'Me'
    click_link 'Edit Post'
    fill_in "Title", with: "vintage hair"
    click_button 'Create Post'
    expect(page).to have_content "vintage hair"
    expect(current_path).to be '/posts'
  end
end

# Post.new :image => File.new(Rails.root + 'spec/fixtures/images/profilepic.png')