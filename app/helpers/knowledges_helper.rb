module KnowledgesHelper

  def author_name user_id
    @user = User.find(user_id) if user_id!=nil
    return @user!=nil ? @user.screen_name : ""
  end
  
  def is_my_knowledge (user_id, author_user_id)
    user_id==author_user_id ? true: false
  end
end
