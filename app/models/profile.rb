class Profile < ActiveRecord::Base
	attr_accessible :name, :email, :description,  :address, :profile_url, :blog_url, :facebook_url, :twitter_url, :Linkedin, :talktag

end
