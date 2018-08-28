json.text @comment.text
json.user_id @comment.user.id
json.time format_posted_time(@comment.created_at)
json.user_nickname @comment.user.nickname
json.tweet_nickname @tweet.user.nickname
