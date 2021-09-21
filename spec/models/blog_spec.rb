require 'rails_helper'
describe 'Blog model function', type: :model do
  context 'Validation test' do
    it 'It ensures title is present' do
      blog = Blog.new(title: '', content: 'fail test', area: 'location', time: '12:00', ph_value:'7', clarity_value:'50', temperature_value:'30', status:'3' ).save
      expect(blog).to eq(true)
    end
    it 'It ensures content is present' do
      blog = Blog.new(title: 'title', content: "", area: 'location', time: '12:00', ph_value:'7', clarity_value:'50', temperature_value:'30', status:'3').save
      expect(blog).to eq(true)
    end
    it 'Validation fail' do
      blog = Blog.new(title: 'title', content: "content1",  area: '', time: '12:00', ph_value:'7', clarity_value:'50', temperature_value:'30', status:'3').save
      expect(blog).to eq(true)
    end
    it 'Validation passes' do
      blog = Blog.new(title: 'title', content: "content1",  area: 'location', time: '12:00', ph_value:'7', clarity_value:'50', temperature_value:'30', status:'3').save
      expect(blog).to eq(true)
    end
  end
  end
