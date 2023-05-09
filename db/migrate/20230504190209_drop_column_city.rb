class DropColumnCity < ActiveRecord::Migration[6.1]
  def change
    remove_column :utilisateurs, :city
  end
end
