class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string   :name_of_location
      t.string   :type_of_event
      t.date     :date
      t.time     :time
      t.string   :address
      t.string   :phone
    end
  end
end
