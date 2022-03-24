module Api
  module V1
    class PostsController < ApiController
      def index
        @posts = Post.all
      end

      def show
        @post = Post.find(params[:id])
        @comments = @post.comments
      end
      
    end
  end
end