module ItemsHelper

  def gravatar_for(user)
    image_tag(user.image, alt: user.nickname, size: '48x48', class: 'gravatar')
  end

end
