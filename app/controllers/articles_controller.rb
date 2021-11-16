class ArticlesController < ApplicationController
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
