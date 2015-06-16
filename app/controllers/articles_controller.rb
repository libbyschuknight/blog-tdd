class ArticlesController < ApplicationController

  def show
    unless @article = Article.find_by_id(params[:id])
      flash[:error] = "Article not found"
      redirect_to root_path
    end
  end
end
