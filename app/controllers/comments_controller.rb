class CommentsController < ApplicationController

  def index
    article = Article.find(params[:article_id])
    render json: article.comments
  end

  def create
    Comment.create(article_id: params[:article_id], content: params[:comment][:content])

    redirect_to article_path(params[:article_id])
  end

  def show
    # @comment = Comment.find_by

  end


end
