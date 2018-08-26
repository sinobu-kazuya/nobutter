class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.string             :name
      t.text               :text
      t.text               :image
      t.integer            :user_id
      t.timestamps
    end
  end
end
