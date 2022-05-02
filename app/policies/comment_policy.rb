class CommentPolicy
  attr_reader :api_v1_user, :comment

  def initialize(api_v1_user, comment)
    @api_v1_user = api_v1_user
    @comment = comment
  end

  def destroy?
    if api_v1_user.is_admin? || api_v1_user == comment.user
      true
    end
  end
end