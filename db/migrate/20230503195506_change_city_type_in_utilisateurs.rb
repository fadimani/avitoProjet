class ChangeCityTypeInUtilisateurs < ActiveRecord::Migration[6.1]
  def change
    change_column :utilisateurs, :city, :integer
  end
end
