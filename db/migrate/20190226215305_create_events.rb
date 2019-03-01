class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :event_date
      t.string :event_picture_url
      t.string :descritption

      t.timestamps
    end
  end
end
