class CreateListUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :list_users do |t|
      t.references :list, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
