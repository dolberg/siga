class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]
  skip_before_filter :current_user, :only => [:index, :new]
  # GET /usuarios
  # GET /usuarios.json
  def index
      $error_login = false;
      #Verifica si se ha enviado el formulario.
    if request.post?
       
        @user = Usuario.find_by_user(params[:nombre_usuario])
         #Verifica si el nombre de usuario y la contraseña son correctos.
        if login(params[:nombre_usuario], params[:contrasena])
          #Los datos son correctos así que redirecciona a la página de bienvenida.
          redirect_to :controller => "principal", :action => "principal";
         
        else
         #Los datos son incorrectos así que setea la variable @error_login a true para mostrar el error por pantalla.
          $error_login = true;
          redirect_to usuarios_index_path
        end
    end
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
  end

  # GET /usuarios/new
  def registrar
    @usuario = Usuario.new
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    #Recuperamos las varibles POST que vinieron desde la acción login.
      @nombre = params[:usuario][:nombre];
      @apellido = params[:usuario][:apellido];
      @user = params[:usuario][:user];
      @pass = params[:usuario][:pass];
      #Creamos el objeto con los valores a ingresar.
      @usuario = Usuario.new({
      :nombre => @nombre,
      :apellido => @apellido,
      :user=> @user,
      :pass => @pass
      });
      #Verificamos si el usuario ha sido creado.
      if @usuario.save()
        redirect_to usuarios_index_path, :notice => "El usuario ha sido creado";
      else
        render "registrar";
      end
  end

    def cerrar_sesion
   @sesion = get_login();
   if @sesion
      logout();
   else
      redirect_to :controller => "usuarios", :action => "index";
   end
 end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:nombre, :apellido, :user, :pass)
    end

    def login(usuario, contrasena)
      #Verifica que el nombre de usuario y la contraseña sean correctos
      if usuario == @user.user and contrasena == @user.pass
         #Los datos son correctos entonces crea la sesión y devuelve true.
         session[:logueado] = true;
         session[:user_id] =  @user.id;
         return true;
      else
         #Los datos no son correctos entonces devuelve false.
         return false;
      end
    end
    def logout
      #Desloguea al usuario.
      session[:logueado] = false;
      session[:user_id] =  nil;
      
    end
    def get_login
        #Verifica si el usuario está logueado. Primero pregunta si existe la session[:logueado] y además que este sea true, si existe devuelve la sesión sino existe devuelve false.
        if defined?(session[:logueado]) and session[:logueado]
         #Está logueado.
          return session;
        else
          #No está logueado.
          return false;
        end
    end
end
