class PostsController < ApplicationController
  before_action :authenticate_admin_user!, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(title: params[:post][:title], review: params[:post][:review])
      redirect_to post_path(@post)
    else
      redirect_to edit_post_path(@post), notice: "ERROR ON SUBMIT!"
    end
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_path
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_path
  end


  private

  def post_params
    params.require(:post).permit(:title, :review)
          .merge(author_id: current_user.id, restaurant_id: params[:restaurant_id])
  end
end
