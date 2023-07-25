class Ticket < ApplicationRecord
    belongs_to :airline
    belongs_to :flight
    scope :random_tickets, -> { Ticket.limit(15).order("RANDOM()").sample(5) }
end

