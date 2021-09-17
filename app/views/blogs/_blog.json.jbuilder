json.extract! blog, :id, :title, :content, :area, :time, :ph_value, :clarity_value, :temperature_value, :status, :created_at, :updated_at
json.url blog_url(blog, format: :json)
