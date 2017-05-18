class UserFnfListsController < ApplicationController
  before_action :set_user_fnf_list, only: [:show, :edit, :update, :destroy]

  # GET /user_fnf_lists
  # GET /user_fnf_lists.json
  def index
    @user_fnf_lists = UserFnfList.all
  end

  # GET /user_fnf_lists/1
  # GET /user_fnf_lists/1.json
  def show
  end

  # GET /user_fnf_lists/new
  def new
    @user_fnf_list = UserFnfList.new
  end

  # GET /user_fnf_lists/1/edit
  def edit
  end

  # POST /user_fnf_lists
  # POST /user_fnf_lists.json
  def create
    @user_fnf_list = UserFnfList.new(user_fnf_list_params)

    respond_to do |format|
      if @user_fnf_list.save
        format.html { redirect_to @user_fnf_list, notice: 'User fnf list was successfully created.' }
        format.json { render :show, status: :created, location: @user_fnf_list }
      else
        format.html { render :new }
        format.json { render json: @user_fnf_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_fnf_lists/1
  # PATCH/PUT /user_fnf_lists/1.json
  def update
    respond_to do |format|
      if @user_fnf_list.update(user_fnf_list_params)
        format.html { redirect_to @user_fnf_list, notice: 'User fnf list was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_fnf_list }
      else
        format.html { render :edit }
        format.json { render json: @user_fnf_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_fnf_lists/1
  # DELETE /user_fnf_lists/1.json
  def destroy
    @user_fnf_list.destroy
    respond_to do |format|
      format.html { redirect_to user_fnf_lists_url, notice: 'User fnf list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_fnf_list
      @user_fnf_list = UserFnfList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_fnf_list_params
      params.require(:user_fnf_list).permit(:phone_no, :fnf_phone_no)
    end
end
