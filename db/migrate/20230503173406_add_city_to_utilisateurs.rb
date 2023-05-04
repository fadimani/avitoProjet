class AddCityToUtilisateurs < ActiveRecord::Migration[6.1]
  def change
    add_column :utilisateurs, :city, :string
  end
end
