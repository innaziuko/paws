class CreateSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :address
      t.string :contact
      t.string :description
      t.integer :price
      t.references :user

      t.timestamps
    end
  end
end
