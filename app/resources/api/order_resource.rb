module Api
  class OrderResource < JSONAPI::Resource
    attributes :total, :user_id
    has_many :tickets
  end
end
