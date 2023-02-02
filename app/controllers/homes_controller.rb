# frozen_string_literal: true

class HomesController < ApplicationController
  def show
    @posts = Post.limit(3)
  end
end
