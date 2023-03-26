module Api
  class OrderResource < JSONAPI::Resource
    attributes :total, :user_id
    has_many :tickets

    paginator :offset

    filter :user, apply: ->(records, value, _options) {
      records.where(user_id: value)
    }
  end
end
