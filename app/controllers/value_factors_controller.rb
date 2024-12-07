class ValueFactorsController < ApplicationController
  before_action :set_value_factor, only: %i[ show edit update destroy ]

  # GET /value_factors or /value_factors.json
  def index
    @value_factors = ValueFactor.all
    # @value_factor = ValueFactor.new
  end

  # GET /value_factors/1 or /value_factors/1.json
  def show
  end

  # GET /value_factors/new
  def new
    @value_factor = ValueFactor.new
  end

  # GET /value_factors/1/edit
  def edit
  end

  # POST /value_factors or /value_factors.json
  def create
    @value_factor = ValueFactor.new(value_factor_params)

    respond_to do |format|
      if @value_factor.save
        format.html { redirect_to @value_factor, notice: "Value factor was successfully created." }
        # format.json { render :show, status: :created, location: @value_factor }
        format.turbo_stream
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @value_factor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /value_factors/1 or /value_factors/1.json
  def update
    respond_to do |format|
      if @value_factor.update(value_factor_params)
        format.turbo_stream { render turbo_stream: turbo_stream.replace(@value_factor, partial: "value_factors/value_factor", locals: {value_factor: @value_factor}) }
        format.html { redirect_to @value_factor, notice: "Value factor was successfully updated." }
        # format.json { render :show, status: :ok, location: @value_factor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @value_factor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /value_factors/1 or /value_factors/1.json
  def destroy
    @value_factor.destroy!

    respond_to do |format|
      format.html { redirect_to value_factors_path, status: :see_other, notice: "Value factor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_value_factor
      @value_factor = ValueFactor.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def value_factor_params
      params.expect(value_factor: [ :name, :description, criteria: [:value, :question] ])
    end
end
