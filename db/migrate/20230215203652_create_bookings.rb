class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :total_price
      t.integer :start_date
      t.integer :end_date
      t.references :user, null: false, foreign_key: true
      t.references :space, null: false, foreign_key: true

      t.timestamps
    end
  end
end
