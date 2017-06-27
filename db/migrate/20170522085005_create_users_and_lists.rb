class CreateUsersAndLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists_users, id:false do |t|
        t.belongs_to :user, index: true
        t.belongs_to :list, index: true
    end
  end
end
