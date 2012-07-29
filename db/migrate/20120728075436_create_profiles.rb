class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :email
      t.text :description
      t.string :address
      t.string :profile_url
      t.string :blog_url
      t.string :facebook_url
      t.string :twitter_url
      t.string :Linkedin
      t.text :talktag

      t.timestamps
    end
  end
end
