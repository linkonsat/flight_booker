class Ticket < ApplicationRecord
    belongs_to :airline
    scope :random_tickets, -> { Ticket.limit(5).order("RANDOM()") }
end
