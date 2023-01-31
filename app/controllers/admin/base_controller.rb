# frozen_string_literal: true

module  Admin
  class BaseController < ApplicationController
    before_action :http_basic_authenticate

    def http_basic_authenticate
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV["ADMIN_USERNAME"] && password == ENV["ADMIN_PASSWORD"]
      end
    end
  end
end
