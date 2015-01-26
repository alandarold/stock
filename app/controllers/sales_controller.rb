class SalesController < ApplicationController
  before_action :set_sale, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sales = Sale.all
    @product = Product.all
    respond_with(@sales)
  end

  def show
    if @sale.user_id == current_user.id
      respond_with(@sale)
    else
      redirect_to root_path, :notice => "Você não tem autorização para ver isso"
    end
  end

  def new
    @sale = Sale.new
    respond_with(@sale)
  end

  def edit
  end

  def create
    @sale = Sale.new(sale_params)
    @sale.user_id = current_user.id
    respond_with(@sale)
  end
           
  def update
    @sale.update(sale_params)
    respond_with(@sale)
  end

  def destroy
    @sale.destroy
    respond_with(@sale)
  end

  private
    def set_sale
      @sale = Sale.find(params[:id])
    end

    def sale_params
      params.require(:sale).permit(:product_id, :code_id, :amount, :discount, :user_id)
    end
end
