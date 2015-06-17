class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    unless @article = Article.find_by_id(params[:id])
      flash[:error] = "Article not found"
      redirect_to root_path
    end
  end

  def new
    @article = Article.new
  end

  def create
    unless @article = Article.create(article_params)
      redirect_to new_article_path
      # render "/articles/new"
    end
    redirect_to @article
  end

  private

  def article_params
    params.require(:article).permit(:title, :description)
  end

end
