class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :titre
      t.string :category
      t.string :adresse
      t.string :tel
      t.string :etat
      t.string :prix
      t.text :description
      t.references :utilisateur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
