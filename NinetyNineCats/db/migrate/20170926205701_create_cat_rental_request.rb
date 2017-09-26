class CreateCatRentalRequest < ActiveRecord::Migration[5.1]
  def change
    create_table :cat_rental_requests do |t|
      t.integer :cat_id, null: false
      t.date :start_date
      t.date :end_date
      t.string :status, null: false, default: "PENDING"
      t.timestamps
    end

    add_index :cat_rental_requests, :cat_id
  end
end