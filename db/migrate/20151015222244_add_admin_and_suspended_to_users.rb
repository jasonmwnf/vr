class AddAdminAndSuspendedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_admin, :boolean
    add_column :users, :is_suspended, :boolean
  end
end
