# frozen_string_literal: true

# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  blurb      :text
#  body       :text
#  iframe     :text
#  slug       :string
#  technology :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_posts_on_slug  (slug) UNIQUE
#
class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_one_attached :thumbnail

  enum technology: {
    ruby: "ruby",
    rails: "rails",
    javascript: "javascript"
  }
end
