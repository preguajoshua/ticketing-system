class Attendee < ApplicationRecord
    belongs_to :event
    belongs_to :ticket
end
