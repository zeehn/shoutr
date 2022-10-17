module ShoutHelper 
  def avatar(user)
    image_tag("//www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}")
  end

  def like_button(shout)
    if current_user.liked?(shout)
      button_to "Unlike", unlike_shout_path(shout), method: :delete
    else
      button_to "Like", like_shout_path(shout)
    end
  end
end
