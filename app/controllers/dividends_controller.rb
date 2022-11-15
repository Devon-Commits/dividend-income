class DividendsController < ApplicationController
  before_action :set_dividend, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]



  # GET /dividends or /dividends.json
  def index

    @dividends = Dividend.all
    
    @sum_div = 0
    @dividends.each do |dividend|
      if dividend.user == current_user
      @sum_div += dividend.stock_total
      end
    end

    @sum_stock = 0
    @dividends.each do |dividend|
      if dividend.user == current_user
      @sum_stock += dividend.stock_owned
      end
    end

  end

  # GET /dividends/1 or /dividends/1.json
  def show
  end

  # GET /dividends/new
  def new
    #@dividend = Dividend.new
    @dividend = current_user.dividends.build
  end

  # GET /dividends/1/edit
  def edit
  end

  # POST /dividends or /dividends.json
  def create
    #@dividend = Dividend.new(dividend_params)
    @dividend = current_user.dividends.build(dividend_params)

    respond_to do |format|
      if @dividend.save
        format.html { redirect_to dividend_url(@dividend), notice: "#{@dividend.stock_symbol} was successfully added." }
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
        format.html { redirect_to dividend_url(@dividend), notice: "#{@dividend.stock_symbol} was successfully updated." }
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
      format.html { redirect_to dividends_url, notice: "#{@dividend.stock_symbol} was successfully removed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @dividend = current_user.dividends.find_by(id: params[:id])
    redirect_to dividends_path, notice: "Not Authorized To Edit This Stock" if @dividend.nil?
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dividend
      @dividend = Dividend.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dividend_params
      params.require(:dividend).permit(:stock_symbol, :stock_name, :div_amount, :stock_owned, :div_total, :user_id)
    end

end
