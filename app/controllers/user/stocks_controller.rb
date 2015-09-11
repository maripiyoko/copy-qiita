class User::StocksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [ :create, :destroy ]

  def index
    @stocks = current_user.stocks
  end

  def create
    @stock = current_user.stocks.build(item_id: params[:item_id])
    respond_to do |format|
      if @stock.save
        @item = Item.find(params[:item_id])
        format.js
      else
        format.js { redirect_to user_items_path(@item) }
      end
    end
  end

  def destroy
    @stock = current_user.stocks.find_by_item_id(params[:item_id])
    @stock.destroy
    @item = Item.find(params[:item_id])
    respond_to do |format|
      format.js
    end
  end

  private

    def set_item
      @item = Item.find(params[:item_id])
    end
end
