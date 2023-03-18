module Api
  class EventResource < JSONAPI::Resource
    attributes :name, :day
    has_many :tickets
  end
end
