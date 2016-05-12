class FixEventIsLive < ActiveRecord::Migration
  def change
    change_column :events, :is_live, :boolean, null: false, default: false
  end
end
