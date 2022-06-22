class Ticket < ApplicationRecord
    belongs_to :airline
    scope :random_tickets, -> { Ticket.limit(15).order("RANDOM()").sample(5) }
end

