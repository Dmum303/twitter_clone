module PostsHelper
  def find_username_by_id(user_id)
    # "Chips"
    User.find(user_id).username
  end
end
