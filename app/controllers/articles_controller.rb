class ArticlesController < ApplicationController

  before_action :authenticate, :only => [:create, :destroy, :edit, :update]
  before_action :bon_utilisateur, :only => [:edit, :update]
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


  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if@article.update(article_params)
      flash[:success] = "article Actualise!"
      redirect_to @article
    else
      render 'edit'
    end
  end



  def search
    key = "%#{params[:key]}%"
    category = "%#{params[:category]}%"
    city = "%#{params[:city]}%"

    # @articles = Article.where("titre LIKE ? or description LIKE ?", key,key)

    @articles = Article.where("category LIKE ? AND adresse LIKE ?",category,city)

    @articles = @articles.where("titre LIKE ? or description LIKE ?", key,key)

  end

  def show
    @article = Article.find(params[:id])
  end


  private

  def article_params
    params.require(:article).permit(:titre,:category,:adresse ,:tel,:etat,:prix,:description,:image)
  end




end
