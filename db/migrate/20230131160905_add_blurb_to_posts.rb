class AddBlurbToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :blurb, :text
  end
end
