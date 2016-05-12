class ICanNotDeciders < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.rename :live, :is_live
    end
  end
end
