class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :user_id
      t.integer :board_id

      t.timestamps
    end
  end
end
