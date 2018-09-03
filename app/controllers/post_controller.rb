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
    redirect_to '/post/index'
  end
  
  def new
  end

  def read
    @one_post = Post.find(params[:post_id])
    @one_post.views = @one_post.views + 1
    @one_post.save
  end
  
  def update_post
    @update_post = Post.find(params[:post_id])
  end
  
  def update
    Post.find(params[:post_id]).update(title: params[:title_update], content: params[:content_update])
    # updatePost = Post.find(params[:post_id])
    # updatePost.title = params[:title_update]
    # updatePost.content = params[:content_update]
    # updatePost.save
    redirect_to '/post/index'
  end

  def delete
    Post.find(params[:post_id]).destroy
    redirect_to '/post/index'
  end
  
  
end
