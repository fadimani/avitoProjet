class ArticlesController < ApplicationController

  before_action :authenticate, :only => [:create, :destroy]

  def new
    @page_name = 'annoncer'
    @article = Article.new
  end

  def create
    @article = utilisateur_courant.articles.build(article_params)

    if @article.save
      flash[:success] = "Article created"
      redirect_to root_url
    else
      redirect_to root_url
    end
  end

  def destroy
    Article.find(params[:id]).destroy
    flash[:success] = "annonce supprime"
    redirect_to utilisateur_path(utilisateur_courant)
  end




  def search
    key = "%#{params[:key]}%"
    @articles = Article.where("titre LIKE ? or description LIKE ?", key,key)
  end

  def show
    @article = Article.find(params[:id])
  end


  private

  def article_params
    params.require(:article).permit(:titre,:category,:adresse ,:tel,:etat,:prix,:description)
  end




end
