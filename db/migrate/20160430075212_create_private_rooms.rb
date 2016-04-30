class CreatePrivateRooms < ActiveRecord::Migration
  def change
    create_table :private_rooms do |t|
      t.string :name
    end
  end
end
