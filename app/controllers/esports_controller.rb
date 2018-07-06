class EsportsController < ApplicationController
  before_action :set_esport, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /esports
  # GET /esports.json
  def index
    @esports = Esport.order('match_starts_at DESC').page(params[:page]).per(10)
  end

  # GET /esports/1
  # GET /esports/1.json
  def show
  end

  # GET /esports/new
  def new
    @esport = Esport.new
  end

  # GET /esports/1/edit
  def edit
  end

  # POST /esports
  # POST /esports.json
  def create
    @esport = Esport.new(esport_params)

    respond_to do |format|
      if @esport.save
        format.html { redirect_to :action=>'index', notice: 'Esport was successfully created.' }
        format.json { render :index, status: :created, location: @esport }
      else
        format.html { render :new }
        format.json { render json: @esport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /esports/1
  # PATCH/PUT /esports/1.json
  def update
    respond_to do |format|
      if @esport.update(esport_params)
        format.html { redirect_to :action=>'index', notice: 'Esport was successfully updated.' }
        format.json { render :index, status: :ok, location: @esport }
      else
        format.html { render :edit }
        format.json { render json: @esport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /esports/1
  # DELETE /esports/1.json
  def destroy
    @esport.destroy
    respond_to do |format|
      format.html { redirect_to esports_url, notice: 'Esport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_esport
      @esport = Esport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def esport_params
      params.require(:esport).permit(:match_starts_at, :team_1, :team_2, :league, :odds, :chance, :pick, :status, :main_page)
    end
end
