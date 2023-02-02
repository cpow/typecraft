class AddBlurbToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :blurb, :text
    add_column :posts, :iframe, :text
    add_column :posts, :technology, :string
  end
end
