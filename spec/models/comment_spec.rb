require 'rails_helper'
RSpec.describe Comment, type: :model do
  it "Validation does not pass if the name is empty" do
    comment = Comment.new(content: '', blog_id:'1')
    expect( comment).not_to be_valid
  end
  it "Validation does not pass if description is empty" do
    comment = Comment.new(content: 'Failure test')
    expect( comment).not_to be_valid
  end
  it "validation passes If description is described in name and description" do
    comment=Comment.new(content:'True')
  end
end
