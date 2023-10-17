class OccurencesController < ApplicationController
  before_action :set_occurence, only: %i[ show edit update destroy ]

  # GET /occurences or /occurences.json
  def index
    @occurences = Occurence.all
  end

  # GET /occurences/1 or /occurences/1.json
  def show
  end

  # GET /occurences/new
  def new
    @occurence = Occurence.new
  end

  # GET /occurences/1/edit
  def edit
  end

  # POST /occurences or /occurences.json
  def create
    @occurence = Occurence.new(occurence_params)

    respond_to do |format|
      if @occurence.save
        format.html { redirect_to occurence_url(@occurence), notice: "Occurence was successfully created." }
        format.json { render :show, status: :created, location: @occurence }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @occurence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /occurences/1 or /occurences/1.json
  def update
    respond_to do |format|
      if @occurence.update(occurence_params)
        format.html { redirect_to occurence_url(@occurence), notice: "Occurence was successfully updated." }
        format.json { render :show, status: :ok, location: @occurence }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @occurence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /occurences/1 or /occurences/1.json
  def destroy
    @occurence.destroy

    respond_to do |format|
      format.html { redirect_to occurences_url, notice: "Occurence was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_occurence
      @occurence = Occurence.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def occurence_params
      params.require(:occurence).permit(:status, :deliveryDate, :idRequest)
    end
end
