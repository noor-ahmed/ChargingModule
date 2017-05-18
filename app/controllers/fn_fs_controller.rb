class FnFsController < ApplicationController
  before_action :set_fn_f, only: [:show, :edit, :update, :destroy]

  # GET /fn_fs
  # GET /fn_fs.json
  def index
    @fn_fs = FnF.all
  end

  # GET /fn_fs/1
  # GET /fn_fs/1.json
  def show
  end

  # GET /fn_fs/new
  def new
    @fn_f = FnF.new
  end

  # GET /fn_fs/1/edit
  def edit
  end

  # POST /fn_fs
  # POST /fn_fs.json
  def create
    @fn_f = FnF.new(fn_f_params)

    respond_to do |format|
      if @fn_f.save
        format.html { redirect_to @fn_f, notice: 'Fn f was successfully created.' }
        format.json { render :show, status: :created, location: @fn_f }
      else
        format.html { render :new }
        format.json { render json: @fn_f.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fn_fs/1
  # PATCH/PUT /fn_fs/1.json
  def update
    respond_to do |format|
      if @fn_f.update(fn_f_params)
        format.html { redirect_to @fn_f, notice: 'Fn f was successfully updated.' }
        format.json { render :show, status: :ok, location: @fn_f }
      else
        format.html { render :edit }
        format.json { render json: @fn_f.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fn_fs/1
  # DELETE /fn_fs/1.json
  def destroy
    @fn_f.destroy
    respond_to do |format|
      format.html { redirect_to fn_fs_url, notice: 'Fn f was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fn_f
      @fn_f = FnF.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fn_f_params
      params.require(:fn_f).permit(:no_of_fnf)
    end
end
