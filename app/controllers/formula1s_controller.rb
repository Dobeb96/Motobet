class Formula1sController < ApplicationController
  before_action :set_formula1, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /formula1s
  # GET /formula1s.json
  def index
    @formula1s = Formula1.order('match_starts_at DESC').page(params[:page]).per(10)
  end

  # GET /formula1s/1
  # GET /formula1s/1.json
  def show
  end

  # GET /formula1s/new
  def new
    @formula1 = Formula1.new
  end

  # GET /formula1s/1/edit
  def edit
  end

  # POST /formula1s
  # POST /formula1s.json
  def create
    @formula1 = Formula1.new(formula1_params)

    respond_to do |format|
      if @formula1.save
        format.html { redirect_to :action=>'index', notice: 'Formula1 was successfully created.' }
        format.json { render :index, status: :created, location: @formula1 }
      else
        format.html { render :new }
        format.json { render json: @formula1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formula1s/1
  # PATCH/PUT /formula1s/1.json
  def update
    respond_to do |format|
      if @formula1.update(formula1_params)
        format.html { redirect_to :action=>'index', notice: 'Formula1 was successfully updated.' }
        format.json { render :index, status: :ok, location: @formula1 }
      else
        format.html { render :edit }
        format.json { render json: @formula1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formula1s/1
  # DELETE /formula1s/1.json
  def destroy
    @formula1.destroy
    respond_to do |format|
      format.html { redirect_to formula1s_url, notice: 'Formula1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula1
      @formula1 = Formula1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formula1_params
      params.require(:formula1).permit(:match_starts_at, :team_1, :team_2, :league, :odds, :chance, :pick, :status, :main_page)
    end
end
