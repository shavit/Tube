class CreateViewers < ActiveRecord::Migration[5.0]
  def change
    create_table :viewers do |t|
      t.integer :room_id
      t.integer :user_id

      t.timestamps
    end

    add_index :viewers, :room_id
    add_index :viewers, :user_id
  end
end
