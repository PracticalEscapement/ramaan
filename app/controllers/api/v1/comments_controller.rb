module Api
  module V1
    class CommentsController < ApiController
      before_action :authenticate_api_v1_user!, except: [:index] 

      def index
        post = Post.find(params[:post_id])
        @comments = post.comments
      end

      def create
        @comment = Comment.create(comment_params)
      end

      def destroy
        comment = Comment.find(params[:id])
        comment.destroy
      end

      private

      def comment_params
        params.require(:comment).permit(:text, :likes).merge(post_id: params[:post_id], user_id: current_api_v1_user.id)
      end

    end
  end
end