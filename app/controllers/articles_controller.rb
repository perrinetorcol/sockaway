class ArticlesController < ApplicationController
  def index
    if params[:query] && params[:query] != ""
      @articles = policy_scope(Article).search_by_article(params[:query])
    else
      @articles = policy_scope(Article).order(created_at: :desc)
    end
  end

  def show
    @article = Article.find(params[:id])
    authorize @article
  end

  def new
    @article = Article.new
    authorize @article
  end

  def create
    @article = Article.create(article_params)
    @article.user = current_user
    @article.save
    authorize @article
    redirect_to article_path(@article)
  end

  def destroy
    @user = authorize User.find(params[:id])
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to dressing_path
  end

  private

  def article_params
    params.require(:article).permit(:name, :description, :price, :category, photos: [])
  end
end
