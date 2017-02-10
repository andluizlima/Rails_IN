class UserLivrosController < ApplicationController
  before_action :set_user_livro, only: [:show, :edit, :update, :destroy]

  # GET /user_livros
  # GET /user_livros.json
  def index
    @user_livros = UserLivro.all
  end

  # GET /user_livros/1
  # GET /user_livros/1.json
  def show
  end

  # GET /user_livros/new
  def new
    @user_livro = UserLivro.new
  end

  # GET /user_livros/1/edit
  def edit
  end

  # POST /user_livros
  # POST /user_livros.json
  def create
    @user_livro = UserLivro.new(user_livro_params)

    respond_to do |format|
      if @user_livro.save
        format.html { redirect_to @user_livro, notice: 'User livro was successfully created.' }
        format.json { render :show, status: :created, location: @user_livro }
      else
        format.html { render :new }
        format.json { render json: @user_livro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_livros/1
  # PATCH/PUT /user_livros/1.json
  def update
    respond_to do |format|
      if @user_livro.update(user_livro_params)
        format.html { redirect_to @user_livro, notice: 'User livro was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_livro }
      else
        format.html { render :edit }
        format.json { render json: @user_livro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_livros/1
  # DELETE /user_livros/1.json
  def destroy
    @user_livro.destroy
    respond_to do |format|
      format.html { redirect_to user_livros_url, notice: 'User livro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_livro
      @user_livro = UserLivro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_livro_params
      params.require(:user_livro).permit(:user_id, :livro_id)
    end
end
