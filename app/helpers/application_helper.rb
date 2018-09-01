module ApplicationHelper
  def format_posted_time(time)
  fixed_time = time + 9.hour
  return fixed_time.strftime("%Y/%m/%d %H:%M")
  end
  def current_user?(user)
     user == current_user
  end
end
