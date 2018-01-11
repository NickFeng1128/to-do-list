class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.date :date
      t.text :description
      t.string :file
      t.timestamps
    end
  end
end
