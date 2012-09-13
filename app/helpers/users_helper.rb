module UsersHelper
    def gravatar_for(user)
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        gravatar_url = "https://secure.gravatar.com/avatars/#{gravatar_id}.png"
        gravatar_url = "http://farm8.staticflickr.com/7276/7818911618_3ebfb34887_q.jpg"
        image_tag(gravatar_url, alt: user.name, class: "gravatar")
    end

end
