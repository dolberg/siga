class UsuarioempresasController < ApplicationController
  before_action :set_usuarioempresa, only: [:show, :edit, :update, :destroy]
  skip_before_filter :current_empresa
  

  # GET /usuarioempresas
  # GET /usuarioempresas.json
  def index
    @usuarioempresas = Usuarioempresa.all
  end

  # GET /usuarioempresas/1
  # GET /usuarioempresas/1.json
  def show
    session[:empresa_id] =  @usuarioempresa.empresa.id
    if session[:empresa_id] != nil
      redirect_to inicio_inicio_path
    end
    
  end

  def inicio

  end

  # GET /usuarioempresas/new
  def new
    @usuarioempresa = Usuarioempresa.new
  end

  # GET /usuarioempresas/1/edit
  def edit
  end

  # POST /usuarioempresas
  # POST /usuarioempresas.json
  def create
    @emp = Empresa.find_by_codigo(params[:usuarioempresa][:empresa])
    if @emp.pass == params[:usuarioempresa][:pass]
      @usuarioempresa = Usuarioempresa.new()
      @usuarioempresa.empresa_id = @emp.id
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
    end
  end

  # PATCH/PUT /usuarioempresas/1
  # PATCH/PUT /usuarioempresas/1.json
  def update
    respond_to do |format|
      if @usuarioempresa.update(usuarioempresa_params)
        format.html { redirect_to @usuarioempresa, notice: 'Usuarioempresa was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuarioempresa }
      else
        format.html { render :edit }
        format.json { render json: @usuarioempresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarioempresas/1
  # DELETE /usuarioempresas/1.json
  def destroy
    @usuarioempresa.destroy
    respond_to do |format|
      format.html { redirect_to principal_principal_path, notice: 'Usuarioempresa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuarioempresa
      @usuarioempresa = Usuarioempresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuarioempresa_params
      params.require(:usuarioempresa).permit(:empresa, :pass)
    end

    

end
