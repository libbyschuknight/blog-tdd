class CommentsController < ApplicationController

  def create
    Comment.create(article_id: params[:article_id], content: params[:comment][:content])

    redirect_to article_path(params[:article_id])
  end

  def show
    @comment = Comment.find_by
  end


end
