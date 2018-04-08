module ApplicationHelper
	def avatar_url(user)
		gravatar_id = Digest::MD5::hexdigest(user.email).downcase
		if  user.image
			"http://graph.facebook.com/#{user.id}/picture?type=large"
		else
			"https://www.gravatar.com/avatar/#{gravatar_id}.jpgd=identical&s=150"
		end
	end
end
