class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.integer :room_id
      t.string :picture
      t.string :description
      t.string :gender
      t.datetime :birth_at
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end

    add_index :profiles, :user_id
    add_index :profiles, :room_id
  end
end
