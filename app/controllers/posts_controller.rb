class PostsController < ApplicationController
  before_action :authenticate_admin_user!, only: [:new, :create]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(parms[:id])
  end

  def new
  end

  def create
  end
end
