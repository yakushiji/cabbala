class KarmaNumbersController < ApplicationController
  before_action :set_karma_number, only: [:show, :edit, :update, :destroy]

  # GET /karma_numbers
  # GET /karma_numbers.json
  def index
    @karma_numbers = KarmaNumber.all
  end

  # GET /karma_numbers/1
  # GET /karma_numbers/1.json
  def show
  end

  # GET /karma_numbers/new
  def new
    @karma_number = KarmaNumber.new
  end

  # GET /karma_numbers/1/edit
  def edit
  end

  # POST /karma_numbers
  # POST /karma_numbers.json
  def create
    @karma_number = KarmaNumber.new(karma_number_params)

    respond_to do |format|
      if @karma_number.save
        format.html { redirect_to @karma_number, notice: 'Karma number was successfully created.' }
        format.json { render action: 'show', status: :created, location: @karma_number }
      else
        format.html { render action: 'new' }
        format.json { render json: @karma_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /karma_numbers/1
  # PATCH/PUT /karma_numbers/1.json
  def update
    respond_to do |format|
      if @karma_number.update(karma_number_params)
        format.html { redirect_to @karma_number, notice: 'Karma number was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @karma_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /karma_numbers/1
  # DELETE /karma_numbers/1.json
  def destroy
    @karma_number.destroy
    respond_to do |format|
      format.html { redirect_to karma_numbers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_karma_number
      @karma_number = KarmaNumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def karma_number_params
      params.require(:karma_number).permit(:description, :number)
    end
end
