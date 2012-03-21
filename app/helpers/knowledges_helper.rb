module KnowledgesHelper

  def author_name user_id
    @user = User.find(user_id) if user_id!=nil
    return @user!=nil ? @user.screen_name : ""
  end
end
