class ServisesController < ApplicationController
  before_action :set_servise, only: [:show, :edit, :update, :destroy]

  # GET /servises
  # GET /servises.json
  def index
      @servises = Servise.all
  end

  # GET /servises/1
  # GET /servises/1.json
  def show
  end

  # GET /servises/new
  def new
    @servise = Servise.new
  end

  # GET /servises/1/edit
  def edit
  end

  # POST /servises
  # POST /servises.json
  def create
    @servise = Servise.new(servise_params)

    respond_to do |format|
      if @servise.save
        format.html { redirect_to @servise, notice: 'Servise was successfully created.' }
        format.json { render :show, status: :created, location: @servise }
      else
        format.html { render :new }
        format.json { render json: @servise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servises/1
  # PATCH/PUT /servises/1.json
  def update
    respond_to do |format|
      if @servise.update(servise_params)
        format.html { redirect_to @servise, notice: 'Servise was successfully updated.' }
        format.json { render :show, status: :ok, location: @servise }
      else
        format.html { render :edit }
        format.json { render json: @servise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servises/1
  # DELETE /servises/1.json
  def destroy
    @servise.destroy
    respond_to do |format|
      format.html { redirect_to servises_url, notice: 'Servise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servise
      @servise = Servise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servise_params
      params.require(:servise).permit(:active_serv, :type_serv, :price_serv, :time_of_payment, :user_id)
    end
end
