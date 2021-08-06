# frozen_string_literal: true

class ApplicationController < ActionController::API
  include ActiveStorage::SetCurrent
  include DeviseTokenAuth::Concerns::SetUserByToken
end

