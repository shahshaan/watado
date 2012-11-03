class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :venue
      t.string :location
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :length
      t.string :image
      t.string :category
      t.string :url

      t.timestamps
    end
  end
end
