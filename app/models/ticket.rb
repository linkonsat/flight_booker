class Ticket < ApplicationRecord
    belongs_to :airline
    scope :random_tickets, -> { Ticket.limit(5).order("RANDOM()") }

    def display_price 
        return "$ #{self.price} from #{self.airline.name}"
    end
end

