class AddPromoCode < ActiveRecord::Migration[7.0]
  def change
    create_table :promo_codes do |t|
      t.string :code
      t.integer :value_off  
      t.belongs_to :booking, foreign_key: true 
      t.timestamps
    end
  end
end
