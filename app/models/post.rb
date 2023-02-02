# frozen_string_literal: true

class Post < ApplicationRecord
  enum technology: {
    ruby: "ruby",
    rails: "rails",
    javascript: "javascript"
  }
end
