class User::ItemsController < ApplicationController
  before_action :authenticate_user!

  def new
    @item = current_user.items.build
  end
end
