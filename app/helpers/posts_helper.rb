module PostsHelper
  # This method currently finds email by id
  def find_username_by_id(user_id)
    User.find(user_id).username
  end
end
