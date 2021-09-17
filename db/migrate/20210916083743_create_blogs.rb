class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.string :area
      t.date :time
      t.string :ph_value
      t.string :clarity_value
      t.string :temperature_value
      t.integer :status

      t.timestamps
    end
  end
end
