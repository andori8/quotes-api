class Api::V1::QuotesController < ApplicationController
  def index
    render json: Quote.all
  end

  def add
    @quote = Quote.create(quote_params)
    render json: @quote
  end

  def show
    category = params[:id]
    @quotes = Quote.select { |quote| quote.category_id === category.to_i }
    render json: @quotes
  end

  def random
    quotes = Quote.all
    @quote = quotes.shuffle.first
    render json: @quote
  end

  private
  def quote_params
    params.require(:quote).permit(:id, :blurb, :contributor, :category_id)
  end
end
