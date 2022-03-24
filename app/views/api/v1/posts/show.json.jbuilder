json.partial! 'api/v1/posts/post', post: @post

json.comments @comments do |comment|
  json.id comment.id
  json.user_id comment.user_id
  json.text comment.text
  json.likes comment.likes
end
