class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :points
      t.integer :user_id

      t.timestamps
    end
  end
end
