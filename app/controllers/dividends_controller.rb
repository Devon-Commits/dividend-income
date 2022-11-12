class DividendsController < ApplicationController
  before_action :set_dividend, only: %i[ show edit update destroy ]

  # GET /dividends or /dividends.json
  def index
    @dividends = Dividend.all
  end

  # GET /dividends/1 or /dividends/1.json
  def show
  end

  # GET /dividends/new
  def new
    @dividend = Dividend.new
  end

  # GET /dividends/1/edit
  def edit
  end

  # POST /dividends or /dividends.json
  def create
    @dividend = Dividend.new(dividend_params)

    respond_to do |format|
      if @dividend.save
        format.html { redirect_to dividend_url(@dividend), notice: "Dividend was successfully created." }
        format.json { render :show, status: :created, location: @dividend }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dividend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dividends/1 or /dividends/1.json
  def update
    respond_to do |format|
      if @dividend.update(dividend_params)
        format.html { redirect_to dividend_url(@dividend), notice: "Dividend was successfully updated." }
        format.json { render :show, status: :ok, location: @dividend }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dividend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dividends/1 or /dividends/1.json
  def destroy
    @dividend.destroy

    respond_to do |format|
      format.html { redirect_to dividends_url, notice: "Dividend was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dividend
      @dividend = Dividend.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dividend_params
      params.require(:dividend).permit(:stock_symbol, :stock_name, :div_amount, :stock_owned, :div_total)
    end

end
