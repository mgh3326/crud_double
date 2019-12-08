class HomeController < ApplicationController
  def index
    @post = Article.all
  end

  def create
    @post = Article.new
    @post.title = params[:title]
    @post.author = params[:author]
    @post.content = params[:content]
    @post.save
    redirect_to "/"
  end

  def update
    @post = Article.find(params[:id])
    @post.title = params[:title]
    @post.author = params[:author]
    @post.content = params[:content]
    @post.save
    redirect_to '/'
  end

  def delete
    Article.find(params[:id]).destroy
    redirect_to '/'
  end

  def create_form
  end

  def update_form
    @post = Article.find(params[:id])
  end

  def reply_create
    @reply = Reply.new
    @reply.article_id = params[:article_id]
    @reply.content = params[:content]
    @reply.save
    redirect_to '/'
  end

  def reply_delete
    Reply.find(params[:reply_id]).destroy
    redirect_to '/'
  end
  def reply_update_form
    @reply = Reply.find(params[:reply_id])
  end
  def reply_update
    @reply = Reply.find(params[:reply_id])
    @reply.content=params[:content]
    @reply.save
    redirect_to '/'
  end
end
