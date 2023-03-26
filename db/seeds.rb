ApplicationRecord.transaction do
  event_a = Event.create!(name: 'On the Runway', day: Time.now, booking_enabled: true)
  event_b = Event.create!(name: 'Musical Melodies', day: Time.now + 2.days, booking_enabled: true)
  event_c = Event.create!(name: 'Foodie Frenzy', day: Time.now + 10.days, booking_enabled: false)

  order_a = Order.create!(user_id: 1, total: 20)
  Ticket.create!(event: event_a, order: order_a, checked_in: true, total: 10)
  Ticket.create!(event: event_a, order: order_a, checked_in: true, total: 10)

  order_b = Order.create!(user_id: 2, total: 30)
  Ticket.create!(event: event_a, order: order_b, checked_in: true, total: 10)
  Ticket.create!(event: event_b, order: order_b, checked_in: true, total: 20)

  order_c = Order.create!(user_id: 3, total: 10)
  Ticket.create!(event: event_a, order: order_c, checked_in: false, total: 10)

  order_d = Order.create!(user_id: 3, total: 10)
  Ticket.create!(event: event_a, order: order_d, checked_in: false, total: 10)

  order_e = Order.create!(user_id: 3, total: 10)
  Ticket.create!(event: event_a, order: order_e, checked_in: false, total: 10)

  order_f = Order.create!(user_id: 3, total: 10)
  Ticket.create!(event: event_a, order: order_f, checked_in: false, total: 10)
end
