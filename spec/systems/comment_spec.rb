require 'rails_helper'
RSpec.feature "Comment management function", type: :feature do
  background do
    User.create!(name:"dikae", dob:"1990_03_21", email: 'dikae@gmail.Com',  password: '123456', password_confirmation:'123456')
    visit new_user_session_path
    fill_in 'Email', with: 'dikae@gmail.com'
    fill_in 'Password', with: '123456'
    click_on 'Log in'
    Comment.create(content:"hello world" )
  end
  scenario "Test description list" do
    visit blogs_path
  end
  scenario "Test Comment creation" do
    Comment.create(content:"hello world" )
  end
  scenario 'Test Comment Deletion' do
    blog2=Comment.create(content:"hello world" )
    blog2.delete
    visit blogs_path
  end
  scenario 'Test Comment validation' do
    Comment.create(content:"hello world" )
    visit blogs_path
  end
end
