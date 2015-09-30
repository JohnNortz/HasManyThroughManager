class BuisnessesController < ApplicationController
#Controlls buisness related actions
  before_action :set_buisness, only: [:show, :edit, :update, :destroy]
  #before_action :set_uploader, :new

  # GET /buisnesses
  # GET /buisnesses.json
  def index
    @buisnesses = Buisness.all
  end

  # GET /buisnesses/1
  # GET /buisnesses/1.json
  def show
  end

  # GET /buisnesses/new
  def new
    @buisness = Buisness.new
  end

  # GET /buisnesses/1/edit
  def edit
  end

  # POST /buisnesses
  # POST /buisnesses.json
  def create
    @buisness = Buisness.new(buisness_params)

    respond_to do |format|
      if @buisness.save
        format.html { redirect_to @buisness, notice: 'Buisness was successfully created.' }
        format.json { render :show, status: :created, location: @buisness }
      else
        format.html { render :new }
        format.json { render json: @buisness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buisnesses/1
  # PATCH/PUT /buisnesses/1.json
  def update
    respond_to do |format|
      if @buisness.update(buisness_params)
        format.html { redirect_to @buisness, notice: 'Buisness was successfully updated.' }
        format.json { render :show, status: :ok, location: @buisness }
      else
        format.html { render :edit }
        format.json { render json: @buisness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buisnesses/1
  # DELETE /buisnesses/1.json
  def destroy
    @buisness.destroy
    respond_to do |format|
      format.html { redirect_to buisnesses_url, notice: 'Buisness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_buisness
      @buisness = Buisness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buisness_params
      params.require(:buisness).permit(:name, :location, :products, :image)
    end


end
