class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :permission
      t.string :password
      t.integer :points, default: 0
      t.timestamps
    end
  end
end
