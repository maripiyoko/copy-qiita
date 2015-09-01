class User::ItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [ :show, :edit, :update, :destroy ]

  def index
    @items = current_user.items
  end

  def new
    @item = current_user.items.build
  end

  def create
    @item = current_user.items.build(item_params)
    respond_to do |format|
      if @item.save
        format.html { redirect_to user_item_path(@item), notice: '投稿を作成しました。' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to user_item_path @item, notice: '投稿を更新しました。'}
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to user_items_path, notice: '投稿を削除しました。' }
      format.json { head :no_content }
    end
  end

  private

    def set_item
      @item = current_user.items.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:title, :contents)
    end
end
