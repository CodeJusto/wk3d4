# TODO's

- [x] Create mirgration for tickets
- [x] Use rake commands to setup database
- [x] Fix the mistake in our tickets migration with rollback
- [x] Setup our model associations
- [x] Setup dependent destroy on some of our relationships
- [] Add a few more validates to our models
- [] Add a custom validate when creating a new ticket so we do not sell more than we have, but only on create
- [x] Add a new column to event for 'status' and 'gross_sales'
- [x] Conditionally validate updates to description when status is draft
- [x] Add callback on Ticket to update event gross_sales
