class CreateListRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :list_rooms do |t|
      t.references :list, foreign_key: true
      t.references :room, foreign_key: true
      t.timestamps
    end
  end
end
