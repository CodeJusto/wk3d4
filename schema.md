# users

Users, both people who make events and who have bought tickets.

```ruby
t.string :name
t.string :email
t.timestamps null: false
```

# events

Events posted by Users

```ruby
t.string :title
t.string :description
t.integer :capacity
t.references :user
t.timestamps null: false
```

# ticket_inventories

An inventory of tickets for an event.

```ruby
t.references :event
t.string :string
t.integer :quantity
t.integer :price
t.timestamps null: false
```

# ticket

A Ticket issued to a user from an event.

```ruby
t.string :ticket_number
t.references :ticket_inventory
t.references :user
t.timestamps null: false
```
