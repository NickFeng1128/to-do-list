class AddDoneToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :done, :string
  end
end
