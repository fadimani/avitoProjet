class RemoveCityAndPhoneFromUtilisateurs < ActiveRecord::Migration[6.1]
  def change
    remove_column :utilisateurs, :city
    remove_column :utilisateurs, :phone
  end
end
