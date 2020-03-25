# frozen_string_literal: true

class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.string :description
      t.integer :user_id
      t.timestamps
    end
  end
end
