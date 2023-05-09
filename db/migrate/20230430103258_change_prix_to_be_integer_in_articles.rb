class ChangePrixToBeIntegerInArticles < ActiveRecord::Migration[6.1]
  def up
    change_column :articles, :prix, :integer, using: 'prix::integer'
  end

  def down
    change_column :articles, :prix, :string
  end
end
