ApplicationRecord.transaction do
  event_a = Event.create!(name: 'On the Runway', day: Time.now, booking_enabled: true)
  event_b = Event.create!(name: 'Musical Melodies', day: Time.now + 2.days, booking_enabled: true)
  event_c = Event.create!(name: 'Foodie Frenzy', day: Time.now + 10.days, booking_enabled: false)

  order_a = Order.create!(user_id: 1, total: 20)
  ticket_a1 = Ticket.create!(event: event_a, order: order_a, checked_in: true, total: 10)
  ticket_a2 = Ticket.create!(event: event_a, order: order_a, checked_in: true, total: 10)

  order_b = Order.create!(user_id: 1, total: 30)
  ticket_b1 = Ticket.create!(event: event_a, order: order_b, checked_in: true, total: 10)
  ticket_b2 = Ticket.create!(event: event_b, order: order_b, checked_in: true, total: 20)
end
