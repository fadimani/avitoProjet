class Article < ApplicationRecord
  belongs_to :utilisateur
  validates :utilisateur_id, presence: true
  validates :titre, presence: true, length: { maximum: 200 }
  validates :description, presence: true, length: { maximum: 20000 }

  def self.search(search)
    if search
      sushi_type = Article.find_by(name: search)
      if sushi_type
        self.where()
      else
        @articles = Article.all
      end
    else
      @articles = Article.all
    end
  end
end
