class Moto2sController < ApplicationController
  before_action :set_moto2, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /moto2s
  # GET /moto2s.json
  def index
    @moto2s = Moto2.order('match_starts_at DESC').page(params[:page]).per(10)
  end

  # GET /moto2s/1
  # GET /moto2s/1.json
  def show
  end

  # GET /moto2s/new
  def new
    @moto2 = Moto2.new
  end

  # GET /moto2s/1/edit
  def edit
  end

  # POST /moto2s
  # POST /moto2s.json
  def create
    @moto2 = Moto2.new(moto2_params)

    respond_to do |format|
      if @moto2.save
        format.html { redirect_to :action=>'index', notice: 'Moto2 was successfully created.' }
        format.json { render :index, status: :created, location: @moto2 }
      else
        format.html { render :new }
        format.json { render json: @moto2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moto2s/1
  # PATCH/PUT /moto2s/1.json
  def update
    respond_to do |format|
      if @moto2.update(moto2_params)
        format.html { redirect_to :action=>'index', notice: 'Moto2 was successfully updated.' }
        format.json { render :index, status: :ok, location: @moto2 }
      else
        format.html { render :edit }
        format.json { render json: @moto2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moto2s/1
  # DELETE /moto2s/1.json
  def destroy
    @moto2.destroy
    respond_to do |format|
      format.html { redirect_to moto2s_url, notice: 'Moto2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moto2
      @moto2 = Moto2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moto2_params
      params.require(:moto2).permit(:match_starts_at, :team_1, :team_2, :league, :odds, :chance, :pick, :status, :main_page)
    end
end
