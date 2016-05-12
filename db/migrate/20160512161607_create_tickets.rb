class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :ticket_number
      t.references :ticket_inventory
      t.references :user
      t.timestamps null: false
    end
  end
end
