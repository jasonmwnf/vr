class ChangeUserCreditsToInt < ActiveRecord::Migration
  def change
    change_column :users, :credits, 'integer USING CAST(credits AS integer)'
  end
end
