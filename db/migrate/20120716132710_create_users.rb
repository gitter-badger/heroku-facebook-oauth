class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      # �ɲ�
      t.string :provider
      t.string :uid
      t.string :name
      t.string :screen_name
      t.string :image
      # / �ɲ�
      #
      t.timestamps
    end
  end
end
