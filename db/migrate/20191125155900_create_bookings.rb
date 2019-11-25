class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :equipment, foreign_key: true
      t.date :starting_date
      t.date :ending_date
      t.integer :total_price
      t.string :status, default: 'Pending'

      t.timestamps
    end
  end
end
