class SalesController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]
  before_action :set_sale, only: %i[show edit update destroy]
  def index
    @pagy, @sales = pagy(Sale.all, items: 5)
  end

  def show;
    # @sale = Sale.find params[:id]
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = current_user.sales.new sale_params
    if @sale.save
      return redirect_to sales_path, notice: 'registred sale!'
    end

    render :new
  end

  def edit;
    # @sale = Sale.find params[:id]
  end

  def update
    # @sale = Sale.find params[:id]

    if @sale.update sale_params
      return redirect_to sales_path, notice: 'edited sale'
    end
    render :edit
  end

  def destroy
    @sale = Sale.find(params[:id])
    @sale.destroy

    return redirect_to sales_path, alert: 'removed sale!'
  end

  private

  def sale_params
    params.require(:sale).permit(:product_name, :price, :quantity, :sale_date)
  end

  def set_sale
    @sale = Sale.find params[:id]
  end
end
