class OrdersController < ApplicationController
  before_action :set_cart, only: %i[new create remove_from_cart]
  before_action :set_order, only: %i[show destroy]


  def index
    @orders = Order.includes(:user, :products).where(user: current_user) # Lista pedidos do usuário logado
  end

  def show
    # Detalhes de um pedido específico
  end

  def new
    @order = Order.new
    @subtotal = @cart_products.sum(&:price) # Calcula o subtotal dos produtos no carrinho
    @shipping_methods = 10.000
    @total = @subtotal
  end


  def create
    @order = Order.new(order_params)
    @order.user = current_user

    # Definir métodos de envio
    @shipping_methods = 10.000


    # Calcular total e associar produtos
    @order.total = @cart_products.sum(&:price) + @shipping_methods
    @order.products = @cart_products

    if @order.save
      session[:cart] = [] # Limpa o carrinho após salvar
      redirect_to confirmation_order_path(@order), notice: 'Order was successfully placed!'
    else
      Rails.logger.debug "Order Errors: #{@order.errors.full_messages}"
      render :new, status: :unprocessable_entity
    end
  end




  def destroy
    @order.destroy
    redirect_to orders_url, notice: 'Order was successfully destroyed.'
  end

  def remove_from_cart
    product_id = params[:product_id].to_i
    session[:cart].delete(product_id) # Remove o item do carrinho

    # Recalcula os valores
    @cart_products = Product.where(id: session[:cart])
    @subtotal = @cart_products.sum(&:price)
    @shipping_methods = 10.000
    @total = @subtotal + @shipping_methods

    # Cria um novo pedido para o formulário
    @order = Order.new

    # Renderiza novamente a página com os dados atualizados
    flash.now[:notice] = "Item removed from cart."
    render :new
  end

  def order_confirmation
  end


  private

  def set_order
    @order = Order.find(params[:id]) # Localiza o pedido pelo ID
  end

  def set_cart
    session[:cart] ||= [] # Inicializa o carrinho na sessão se estiver vazio
    @cart_products = Product.where(id: session[:cart]) # Busca produtos válidos no carrinho
  end

  def order_params
    params.require(:order).permit(:planet, :address, :shipping_method)
  end
end
