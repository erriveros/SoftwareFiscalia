class CrimeFilesController < ApplicationController
  before_action :set_crime_file, only: [:show, :edit, :update, :destroy]

  # GET /crime_files
  # GET /crime_files.json
  def index
    @crime_files = CrimeFile.all
  end

  # GET /crime_files/1
  # GET /crime_files/1.json
  def show
  end

  # GET /crime_files/new
  def new
    @crime_file = CrimeFile.new
  end

  # GET /crime_files/1/edit
  def edit
  end

  # POST /crime_files
  # POST /crime_files.json
  def create
    if current_user
      @crime_file = CrimeFile.new(crime_file_params)
      puts("listo papu pase por aca")
      puts(current_user.id)
      @crime_file.user = current_user
      @crime_file.save!
      @crime = Crime.where(id:@crime_file.crime_id).first
      respond_to do |format|
        if @crime_file.save
          format.html { redirect_to @crime, notice: 'Archivo añadido con exito!' }
        else
          format.html { render :new }
          format.json { render json: @crime_file.errors, status: :unprocessable_entity }
        end
      end
    end
    
  end

  # PATCH/PUT /crime_files/1
  # PATCH/PUT /crime_files/1.json
  def update
    respond_to do |format|
      if @crime_file.update(crime_file_params)
        format.html { redirect_to @crime_file, notice: 'Crime file was successfully updated.' }
        format.json { render :show, status: :ok, location: @crime_file }
      else
        format.html { render :edit }
        format.json { render json: @crime_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crime_files/1
  # DELETE /crime_files/1.json
  def destroy
    @crime = Crime.where(id:@crime_file.crime_id).first
    @crime_file.destroy
    respond_to do |format|
      format.html { redirect_to @crime, notice: 'Archivo destruido con exito!' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crime_file
      @crime_file = CrimeFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crime_file_params
      params.fetch(:crime_file, {}).permit(:file ,:description,:crime_id)
    end
end
