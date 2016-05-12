# TODO's

- [] Create mirgration for tickets
- [] Use rake commands to setup database
- [] Fix the mistake in our tickets migration with rollback
- [] Setup our model associations
- [] Setup dependent destroy on some of our relationships
- [] Add a few more validates to our models
- [] Add a custom validate when creating a new ticket so we do not sell more than we have, but only on create
- [] Add a new column to event for 'status' and 'gross_sales'
- [] Conditionally validate updates to description when status is draft
- [] Add callback on Ticket to update event gross_sales
- [] Use before_validation to assign ticket a ticket_number
