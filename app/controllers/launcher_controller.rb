class LauncherController < ApplicationController
  def index
      @user = User.new
  end
end
