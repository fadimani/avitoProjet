class AddDefaultValueToColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :utilisateurs, :city, :integer, default: nil
  end
end
