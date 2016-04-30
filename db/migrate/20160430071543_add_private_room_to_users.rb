class AddPrivateRoomToUsers < ActiveRecord::Migration
  def change
    add_column :users, :private_rooms, :integer
  end
end
