class FootballsController < ApplicationController
  before_action :set_football, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /footballs
  # GET /footballs.json
  def index
    @footballs = Football.order('match_starts_at DESC').page(params[:page]).per(10)
  end

  # GET /footballs/1
  # GET /footballs/1.json
  def show
  end

  # GET /footballs/new
  def new
    @football = Football.new
  end

  # GET /footballs/1/edit
  def edit
  end

  # POST /footballs
  # POST /footballs.json
  def create
    @football = Football.new(football_params)

    respond_to do |format|
      if @football.save
        format.html { redirect_to :action=>'index', notice: 'Football was successfully created.' }
        format.json { render :index, status: :created, location: @football }
      else
        format.html { render :new }
        format.json { render json: @football.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /footballs/1
  # PATCH/PUT /footballs/1.json
  def update
    respond_to do |format|
      if @football.update(football_params)
        format.html { redirect_to :action=>'index', notice: 'Football was successfully updated.' }
        format.json { render :index, status: :ok, location: @football }
      else
        format.html { render :edit }
        format.json { render json: @football.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /footballs/1
  # DELETE /footballs/1.json
  def destroy
    @football.destroy
    respond_to do |format|
      format.html { redirect_to footballs_url, notice: 'Football was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_football
      @football = Football.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def football_params
      params.require(:football).permit(:match_starts_at, :team_1, :team_2, :league, :odds, :chance, :pick, :status, :main_page)
    end
end
