class MicropopstsController < ApplicationController
  before_action :set_micropopst, only: [:show, :edit, :update, :destroy]

  # GET /micropopsts
  # GET /micropopsts.json
  def index
    @micropopsts = Micropopst.all
  end

  # GET /micropopsts/1
  # GET /micropopsts/1.json
  def show
  end

  # GET /micropopsts/new
  def new
    @micropopst = Micropopst.new
  end

  # GET /micropopsts/1/edit
  def edit
  end

  # POST /micropopsts
  # POST /micropopsts.json
  def create
    @micropopst = Micropopst.new(micropopst_params)

    respond_to do |format|
      if @micropopst.save
        format.html { redirect_to @micropopst, notice: 'Micropopst was successfully created.' }
        format.json { render :show, status: :created, location: @micropopst }
      else
        format.html { render :new }
        format.json { render json: @micropopst.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micropopsts/1
  # PATCH/PUT /micropopsts/1.json
  def update
    respond_to do |format|
      if @micropopst.update(micropopst_params)
        format.html { redirect_to @micropopst, notice: 'Micropopst was successfully updated.' }
        format.json { render :show, status: :ok, location: @micropopst }
      else
        format.html { render :edit }
        format.json { render json: @micropopst.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropopsts/1
  # DELETE /micropopsts/1.json
  def destroy
    @micropopst.destroy
    respond_to do |format|
      format.html { redirect_to micropopsts_url, notice: 'Micropopst was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micropopst
      @micropopst = Micropopst.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micropopst_params
      params.require(:micropopst).permit(:content, :user_id)
    end
end
