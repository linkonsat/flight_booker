class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.integer :price 
      t.belongs_to :airline, foreign_key: true 
      t.belongs_to :flight, foreign_key: true
      t.timestamps
    end
  end
end
