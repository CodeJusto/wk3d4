class TicketInventory < ActiveRecord::Base
  has_many :tickets, dependent: :destroy
  belongs_to :event
end
