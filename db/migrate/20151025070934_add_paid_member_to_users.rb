class AddPaidMemberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_paid, :boolean, default: false
  end
end
