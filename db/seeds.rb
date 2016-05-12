require 'faker'
require_relative '../setup'

# Create some users
@users = []
20.times do
  @users << User.create(name: Faker::Name.name, email: Faker::Internet.email)
end

# Create some events
@events = []
@ticket_inventory = []
10.times do
  @events << Event.create(title: Faker::Book.title,
    description: Faker::Lorem.paragraph,
    capacity: Faker::Number.between(5, 20),
    user_id: @users.sample().id
  )

  # ticket_inventory
  Faker::Number.between(1, 3).times do
    @ticket_inventory << TicketInventory.create(
    title: Faker::Company.name,
    event_id: @events.last.id,
    quantity: Faker::Number.between(5, 10),
    price: Faker::Number.between(5,100)
    )

    # tickets
    Faker::Number.between(0, @ticket_inventory.last.quantity).times do
      Ticket.create(
        ticket_number: Faker::Number.number(10),
        user_id: @users.sample.id,
        ticket_inventory_id: @ticket_inventory.last.id
      )
    end

  end

end
