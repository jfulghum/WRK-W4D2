class CreateCats < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.date :birth_date, null: false
      t.text :color, null: false
      t.text :name, null: false
      t.text :sex, null: false, limit: 1
      t.text :description
      t.timestamps
    end

  end
end
