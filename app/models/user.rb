class User < ActiveRecord::Base
  has_many :knowledges
  has_many :answers

  def self.create_with_omniauth(auth)
    user=User.new
    user.provider=auth["provider"]
    user.uid=auth["uid"]
    unless auth["info"].blank?
      user.name=auth["info"]["name"]
      user.screen_name=auth["info"]["nickname"]
      user.image_path=auth["info"]["image"]
    end
    unless auth['credentials'].blank?
      user.token=auth['credentials']['token']
      user.secret=auth['credentials']['secret']
    end
    user.save
    user
  end
end
