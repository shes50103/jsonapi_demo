module Api
  class OrderResource < JSONAPI::Resource
    attributes :total, :user_id, :tickets_total
    has_many :tickets

    paginator :offset

    filter :user, apply: ->(records, value, _options) {
      records.where(user_id: value)
    }

    def tickets_total
      @model.tickets.sum(:total)
    end
  end
end
