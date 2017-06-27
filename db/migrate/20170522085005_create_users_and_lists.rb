class CreateUsersAndLists < ActiveRecord::Migration[5.0]
  def change
    create_table :choices_users, id:false do |t|
        t.belongs_to :user, index: true
        t.belongs_to :choice, index: true
    end
  end
end
