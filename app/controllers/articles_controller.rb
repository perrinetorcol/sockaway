class ArticlesController < ApplicationController
  def index
    @articles = policy_scope(Article).order(created_at: :desc)
  end
  
  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @user = authorize User.find(params[:id])
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to dressing_path
  end
end
