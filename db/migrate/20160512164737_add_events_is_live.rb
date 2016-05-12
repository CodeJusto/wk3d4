class AddEventsIsLive < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.boolean :live
    end
  end
end
