class WarehousesController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    @warehouse = @item.warehouses.create(warehouse_params)
    redirect_to item_path(@item)
  end

  private 
    def warehouse_params
      params.require(:warehouse).permit(:name)
    end
end
