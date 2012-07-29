# == Schema Information
#
# Table name: profiles
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  email        :string(255)
#  description  :text
#  address      :string(255)
#  profile_url  :string(255)
#  blog_url     :string(255)
#  facebook_url :string(255)
#  twitter_url  :string(255)
#  Linkedin     :string(255)
#  talktag      :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Profile < ActiveRecord::Base
	attr_accessible :name, :email, :description,  :address, :profile_url, :blog_url, :facebook_url, :twitter_url, :Linkedin, :talktag

end
