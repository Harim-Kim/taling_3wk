class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    Post.create(title: params[:title_input], content:params[:content_input])
    redirect_to :back
  end
  
  def new
  end

  def read
  end

  def update
  end

  def delete
  end
end
