FactoryBot.define do
  factory :blog do

    title { 'title' }
    content {'content1'}
    area { 'location' }
    times { '12:00' }
    ph_value { '7' }
    clarity_value { '50' }
    temperature_value { '30' }
    status { '3'}
  end
end
