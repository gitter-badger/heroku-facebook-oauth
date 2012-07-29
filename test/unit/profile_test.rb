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

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
