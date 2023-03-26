module Api
  class TicketResource < JSONAPI::Resource
    attributes :total, :event_id, :order_id, :checked_in

    belongs_to :event
  end
end
