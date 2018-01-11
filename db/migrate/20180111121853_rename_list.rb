class RenameList < ActiveRecord::Migration[5.1]
  def change
    rename_column :lists, :date, :due_date
    rename_column :lists, :description, :note
    rename_column :lists, :file, :image
  end
end
