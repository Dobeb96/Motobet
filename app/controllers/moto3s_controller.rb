class Moto3sController < ApplicationController
  before_action :set_moto3, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /moto3s
  # GET /moto3s.json
  def index
    @moto3s = Moto3.order('match_starts_at DESC').page(params[:page]).per(10)
  end

  # GET /moto3s/1
  # GET /moto3s/1.json
  def show
  end

  # GET /moto3s/new
  def new
    @moto3 = Moto3.new
  end

  # GET /moto3s/1/edit
  def edit
  end

  # POST /moto3s
  # POST /moto3s.json
  def create
    @moto3 = Moto3.new(moto3_params)

    respond_to do |format|
      if @moto3.save
        format.html { redirect_to :action=>'index', notice: 'Moto3 was successfully created.' }
        format.json { render :index, status: :created, location: @moto3 }
      else
        format.html { render :new }
        format.json { render json: @moto3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moto3s/1
  # PATCH/PUT /moto3s/1.json
  def update
    respond_to do |format|
      if @moto3.update(moto3_params)
        format.html { redirect_to :action=>'index', notice: 'Moto3 was successfully updated.' }
        format.json { render :index, status: :ok, location: @moto3 }
      else
        format.html { render :edit }
        format.json { render json: @moto3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moto3s/1
  # DELETE /moto3s/1.json
  def destroy
    @moto3.destroy
    respond_to do |format|
      format.html { redirect_to moto3s_url, notice: 'Moto3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moto3
      @moto3 = Moto3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moto3_params
      params.require(:moto3).permit(:match_starts_at, :team_1, :team_2, :league, :odds, :chance, :pick, :status, :main_page)
    end
end
