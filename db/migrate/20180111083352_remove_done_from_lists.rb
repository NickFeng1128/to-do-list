class RemoveDoneFromLists < ActiveRecord::Migration[5.1]
  def change
    remove_column :lists, :done
  end
end
