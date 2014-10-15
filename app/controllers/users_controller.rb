class UsersController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update]
  before_filter :correct_user, :only => [:edit, :update]

  # GET /users
  # GET /users.json
  def index
    @users = User.all.order('level').reverse
    @titre = "Pantheon"
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @titre = @user.nom
  end

  # GET /users/new
  def new
    @user = User.new
    @titre = "Inscription"
  end

  # GET /users/1/edit
  def edit
     @user = User.new(user_params)
     @titre = "Édition profil"
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Bienvenue dans l'Application Exemple!"
      redirect_to @user
    else
      @titre = "Inscription"
      render 'new'
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.new(user_params)
    if @user.update_attributes(user_params)
      flash[:success] = "Profil actualisé."
      redirect_to @user
    else
      @titre = "Édition profil"
      render 'edit'
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(user_params)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:nom, :email, :password, :password_confirmation)
    end

    def authenticate
      deny_access unless signed_in?
    end

    def correct_user
      @user = User.find(user_params)
      redirect_to(root_path) unless current_user?(@user)
    end
  end
