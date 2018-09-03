class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    Post.create(title: params[:title_input], content:params[:content_input]) #게시물을 db에 저장하는 것
    # new_post = Post.new
    # new_post.title = params[:title_input]
    # new_post.content = params[:content_input]
    # new_post.save
    redirect_to :back
  end
  
  def new
  end

  def read
    @one_post = Post.find(params[:post_id])
  end

  def update
  end

  def delete
  end
end
