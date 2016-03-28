class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :profile_id
      t.string :room_type
      t.string :name
      t.string :description
      t.string :picture
      t.integer :participants_number
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end

    add_index :rooms, :profile_id
    add_index :rooms, :room_type
    add_index :rooms, :participants_number
  end
end
