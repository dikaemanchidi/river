# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.find_or_initialize_by(email: 'admin@gmail.com')
user.name = 'Admin'
user.password = 'admin@12345'
user.admin = 'true'
user.save!
10.times do |t|
    User.create! :email => "itsme#{t}@gmail.com", :password => "mysecret#{t}", :password_confirmation => "mysecret#{t}"
  end

10.times do |t|
      Blog.create! :title => "itsme#{t}", :content => "mysecret#{t}", :area => "mysecret#{t}"
end
10.times do |t|
		Comment.create!(blog_id: rand(1..10), :content => "content#{t}")
  end
