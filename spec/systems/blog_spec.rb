require 'rails_helper'
RSpec.feature "Blog management function", type: :feature do
  background do
    User.create!( name: "dikae", dob: "1990_03_21", email: 'dikae@gmail.Com',  password: '123456', password_confirmation:'123456')
    visit new_user_session_path
    fill_in 'Email', with: 'dikae@gmail.com'
    fill_in 'Password', with: '123456'
    click_on 'Log in'
    Blog.create(title:"title", content: "content1", area:"location", time:"12:00", ph_value: "7", clarity_value:"50", temperature_value:"30", status:"3")
  end
  scenario "Test description list" do
    visit blogs_path
  end
  scenario "Test blog creation" do
  Blog.create(title:"title", content: "content1", area:"location", time:"12:00", ph_value: "7", clarity_value:"50", temperature_value:"30", status:"3")
  end
  scenario "Test blog details" do
    Blog.first
  end
  scenario "Test blog updating" do
      blog=Blog.create(title:"title", content: "content1", area:"location", time:"12:00", ph_value: "7", clarity_value:"50", temperature_value:"30", status:"3")
    blog.title='title2'
    blog.save
   # save_and_open_page
  end
  scenario 'Test blog Deletion' do
    blog1=Blog.create(title:"title", content: "content1", area:"location", time:"12:00", ph_value: "7", clarity_value:"50", temperature_value:"30", status:"3")
    blog1.delete
    visit blogs_path
  end
  scenario 'Test blog validation' do
    Blog.create(title:"title", content: "content1", area:"location", time:"12:00", ph_value: "7", clarity_value:"50", temperature_value:"30", status:"3")
    visit blogs_path
  end
end
