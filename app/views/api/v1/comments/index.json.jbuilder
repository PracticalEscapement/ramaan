json.comments @comments do |comment|
  json.id comment.id
  json.user comment.user.first_name
  json.user_id comment.user_id
  json.text comment.text
  json.likes comment.likes
end