class CreateSignOuts < ActiveRecord::Migration[5.0]
  def change
    create_table :sign_outs do |t|
      t.integer :user_id

      t.string :reason

      t.timestamps
    end
  end
end
