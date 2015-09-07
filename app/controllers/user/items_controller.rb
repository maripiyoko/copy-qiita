class User::ItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [ :show, :edit, :update, :destroy ]

  def index
    @items = current_user.items.page(params[:page])
  end

  def new
    @item = current_user.items.build
  end

  def create
    @item = current_user.items.build(item_params)
    respond_to do |format|
      if @item.save
        flash[:notice] = '投稿を作成しました。'
        format.html { redirect_to user_item_path(@item) }
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
        flash[:notice] = '投稿を更新しました。'
        format.html { redirect_to user_item_path @item }
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
      flash[:notice] = '投稿を削除しました。'
      format.html { redirect_to user_items_path }
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
