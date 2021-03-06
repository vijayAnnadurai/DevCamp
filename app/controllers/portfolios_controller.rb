class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [ :edit, :update, :show, :destroy]
  def index
   @portfolio_items = Portfolio.ruby_on_rails_items
  end
  
  def new
   end 	

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update

    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  end

  def set_portfolio
    @portfolio_item = Portfolio.find(params[:id])
  end

  def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body)
  end

  def destroy
  	@portfolio_item.destroy

  	respond_to do |format|
  		format.html { redirect_to portfolios_path, notice: 'portfolio record is deleted'}
  	end
  end

end
