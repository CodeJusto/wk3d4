class EventGrossSales < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.integer :gross_sales
    end
  end
end
