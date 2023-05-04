class ChangeCityTypeToUtilisateurs < ActiveRecord::Migration[6.1]
  def up
    change_column :utilisateurs, :city, :integer, using: 'city::integer'
  end

  def down
    change_column :utilisateurs, :city, :integer
  end
end
