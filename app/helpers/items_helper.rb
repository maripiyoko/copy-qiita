module ItemsHelper

  def gravatar_for(user)
    image_tag(user.image, alt: user.nickname, size: '24x24', class: 'gravatar')
  end

end
