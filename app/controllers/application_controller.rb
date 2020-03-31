class ApplicationController < ActionController::Base
  # ログイン済みのユーザのみアクセス許可
  before_action :authenticate_user!
  protect_from_forgery with: :exception
end
