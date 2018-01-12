class AddCompleted < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :completed, :boolean
    remove_column :lists, :done
  end
end
