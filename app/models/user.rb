class User < ActiveRecord::Base

  def User.authenticate name, password
    if user = User.find_by_name(name)
      if password == user.password 
        user
      end
    end
  end

end

