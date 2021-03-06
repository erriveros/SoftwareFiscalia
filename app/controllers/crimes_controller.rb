class CrimesController < ApplicationController
  before_action :set_crime, only: [:show, :edit, :update, :destroy]
  # GET /crimes
  # GET /crimes.json
  def index
    @crimes = Crime.all
  end

  # GET /crimes/1
  # GET /crimes/1.json
  def show
    @tags = CrimeTag.find(@crime.labels)
  end

  # GET /crimes/new
  def new
    @crime = Crime.new
  end

  # GET /crimes/1/edit
  def edit
  end

  # POST /crimes
  # POST /crimes.json
  def create
    @crime = Crime.new(crime_params)

    respond_to do |format|
      if @crime.save
        format.html { redirect_to @crime, notice: 'Procedimiento creado con éxito.' }
        format.json { render :show, status: :created, location: @crime }
      else
        format.html { render :new }
        format.json { render json: @crime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crimes/1
  # PATCH/PUT /crimes/1.json
  def update
    respond_to do |format|
      if @crime.update(crime_params)
        format.html { redirect_to @crime, notice: 'Procedimiento actualizado con éxito.' }
        format.json { render :show, status: :ok, location: @crime }
      else
        format.html { render :edit }
        format.json { render json: @crime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crimes/1
  # DELETE /crimes/1.json
  def destroy
    CrimeThief.where(crime_id:@crime.id).each do |ct|
      ct.destroy
    end
    CrimeVictim.where(crime_id:@crime.id).each do |ct|
      ct.destroy
    end
    CrimeWitness.where(crime_id:@crime.id).each do |ct|
      ct.destroy
    end
    @crime.destroy
    respond_to do |format|
      format.html { redirect_to crimes_url, notice: 'Procedimiento eliminado con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crime
      @crime = Crime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crime_params
      params.fetch(:crime, {}).permit(:title,:labels,:place,:description,:clip, images:[], files:[])
    end
end
