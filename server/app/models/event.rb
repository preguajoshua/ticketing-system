class Event < ApplicationRecord
    belongs_to :event
    has_many :attendees
end
