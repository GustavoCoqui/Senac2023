class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  def index
    @order = Order.all
    @orders = Order.all
  end


  def show
  end


  def new
    @order = Order.new
  end

  def edit
  end

  def create
    @order = Order.new(order_params)
    #@order.user = current_user
    if @order.save
      redirect_to @order, notice: "Pedido criado com sucesso."
    else
      render :new, status: :unprocessable_entity
    end
  end


  def update
    if @order.update(order_params)
      redirect_to @order, notice: "Pedido atualizado com sucesso"
    else
      render :edit, status: :unprocessable_entity
    end
  end


  def destroy
    @order.destroy
    redirect_to orders_url, notice: "Pedido cancelado com sucesso."
  end

  private

    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:pao_de_alho, :linguica_fina, :liguica_groca, :queijo, :frango, :porco, :costela_de_ovelha, :paleta_de_ovelha, :picanha, :file_mignion, :maminha, :entrecort, :costela, :vazio, :alcatra, :capa_de_file, :sorvete, :chocolate_barra, :bombom, :ceveja_lata, :refrigerante, :agua_sem_gas, :agua_com_gas, :espumante, :entrega, :pagamento)
    end
end
