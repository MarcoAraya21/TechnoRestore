class CProductsController < ApplicationController
  before_action :set_c_product, only: [:show, :edit, :update, :destroy]

  # GET /c_products
  # GET /c_products.json
  def index
    @c_products = CProduct.all
  end

  # GET /c_products/1
  # GET /c_products/1.json
  def show
  end

  # GET /c_products/new
  def new
    @c_product = CProduct.new
  end

  # GET /c_products/1/edit
  def edit
  end

  # POST /c_products
  # POST /c_products.json
  def create
    @c_product = CProduct.new(c_product_params)

    respond_to do |format|
      if @c_product.save
        format.html { redirect_to @c_product, notice: 'C product was successfully created.' }
        format.json { render :show, status: :created, location: @c_product }
      else
        format.html { render :new }
        format.json { render json: @c_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_products/1
  # PATCH/PUT /c_products/1.json
  def update
    respond_to do |format|
      if @c_product.update(c_product_params)
        format.html { redirect_to @c_product, notice: 'C product was successfully updated.' }
        format.json { render :show, status: :ok, location: @c_product }
      else
        format.html { render :edit }
        format.json { render json: @c_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_products/1
  # DELETE /c_products/1.json
  def destroy
    @c_product.destroy
    respond_to do |format|
      format.html { redirect_to c_products_url, notice: 'C product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_product
      @c_product = CProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_product_params
      params.require(:c_product).permit(:ptype_id, :cstatus_id, :user_id, :Nombre, :Descripcion, :Marca)
    end
end
