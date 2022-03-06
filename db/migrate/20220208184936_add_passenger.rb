# frozen_string_literal: true

class AddPassenger < ActiveRecord::Migration[7.0]
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :age
      t.string :email
      t.bigint :booking_id
      t.belongs_to :user
    end
  end
end
