class EmpresasController < ApplicationController
  before_action :set_empresa, only: [:show, :edit, :update, :destroy]
  skip_before_action :current_empresa

  # GET /empresas
  # GET /empresas.json
  def index
    @empresas = Empresa.all
  end

  # GET /empresas/1
  # GET /empresas/1.json
  def show
  end

  # GET /empresas/new
  def new
    @empresa = Empresa.new
    @usuarioempresa = Usuarioempresa.new

  end

  # GET /empresas/1/edit
  def edit
  end

  # POST /empresas
  # POST /empresas.json
  def create
    @empresa = Empresa.new(empresa_params)

    
      if @empresa.save
          @usuarioempresa = Usuarioempresa.new()
          @usuarioempresa.empresa_id = @empresa.id
          @usuarioempresa.usuario_id = @current_user.id

          respond_to do |format|
            if @usuarioempresa.save
              format.html { redirect_to @usuarioempresa, notice: 'Usuarioempresa was successfully created.' }
              format.json { render :show, status: :created, location: @usuarioempresa }
            else
              format.html { render :new }
              format.json { render json: @usuarioempresa.errors, status: :unprocessable_entity }
            end
          end
      else
        respond_to do |format|
          format.html { render :new }
          format.json { render json: @empresa.errors, status: :unprocessable_entity }
        end
      end
    end

  # PATCH/PUT /empresas/1
  # PATCH/PUT /empresas/1.json
  def update
    respond_to do |format|
      if @empresa.update(empresa_params)
        format.html { redirect_to @empresa, notice: 'Empresa was successfully updated.' }
        format.json { render :show, status: :ok, location: @empresa }
      else
        format.html { render :edit }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empresas/1
  # DELETE /empresas/1.json
  def destroy
    @empresa.destroy
    respond_to do |format|
      format.html { redirect_to empresas_url, notice: 'Empresa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empresa
      @empresa = Empresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empresa_params
      params.require(:empresa).permit(:empresa, :codigo, :pass)
    end
end
