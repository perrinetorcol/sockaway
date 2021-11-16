class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @user = authorize User.find(params[:id])
  end
end
