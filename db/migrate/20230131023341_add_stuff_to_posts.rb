# frozen_string_literal: true

class AddStuffToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :title, :string
    add_column :posts, :body, :text
  end
end
