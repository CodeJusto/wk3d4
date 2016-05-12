class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :ticket_inventory

  after_create :update_event_gross_sales

  private

  def update_event_gross_sales
    # ticket_inventory.event.update_gross_sales
    ticket_inventory.event.gross_sales += ticket_inventory.price
    ticket_inventory.event.save
    # ticket_inventory.event.update(
    #   gross_sales: ticket_inventory.event.gross_sales + ticket_inventory.price
    # )
  end
end
