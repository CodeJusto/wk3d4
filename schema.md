# users
```ruby
t.string :name
t.string :email
t.timestamps null: false
```

# events
```ruby
t.string :title
t.string :description
t.integer :capacity
t.references :user
t.timestamps null: false
```

# ticket_inventories
```ruby
t.references :event
t.string :string
t.integer :quantity
t.integer :price
t.timestamps null: false
```

# ticket
```ruby
t.string :ticket_number
t.references :ticket_inventory
t.references :user
t.timestamps null: false
```
