class CreateTicketInventories < ActiveRecord::Migration
  def change
    create_table :ticket_inventories do |t|
      t.references :event
      t.string :title
      t.integer :quantity
      t.integer :price
      t.timestamps null: false
    end
  end
end
