class AddAvailabilityToSpace < ActiveRecord::Migration[7.0]
  def change
    add_column :spaces, :start_date, :datetime
    add_column :spaces, :end_date, :datetime
  end
end
