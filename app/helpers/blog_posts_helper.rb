module BlogPostsHelper
		def avatar_profile_link(user, image_options={}, html_options={})
  avatar_url = nil
  unless user.nil?
    avatar_url = user.avatar? ? user.avatar.url(:thumb) : nil
    link_to(image_tag(avatar_url, image_options), profile_path(user.profile_name), html_options)
  end
end
end
