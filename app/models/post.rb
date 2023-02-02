# frozen_string_literal: true

# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string
#  body       :text
#  blurb      :text
#  iframe     :text
#  technology :string
#
class Post < ApplicationRecord
  enum technology: {
    ruby: "ruby",
    rails: "rails",
    javascript: "javascript"
  }
end
