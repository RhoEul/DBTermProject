class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :user_id
      t.string :name
      t.string :description
      t.integer :participants


      t.timestamps
    end
  end
end
