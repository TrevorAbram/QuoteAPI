class QuotesController < ApplicationController

  def index
    quotes = Quote.order('created_at DESC')
    render json: {status: "SUCCESS", message: "You've loaded quotes", data:quotes}, status: :ok
  end

  # def show
  #   @quotes = Quote.find(params[:id])
  #   json_response(@quote)
  # end
  #
  # def create
  #   @quotes = Quote.create(quote_params)
  #   json_response(@quote)
  # end
  #
  # def update
  #   @quotes = Quote.find(params[:id])
  #   @quote.update(quote_params)
  # end
  #
  # def destroy
  #   @quotes = Quote.find(params[:id])
  #   @quote.destroy
  # end
  #
  #
  # private
  # def json_response(object, status = :ok)
  #   # Could also list 200 as status code. Changing to 401 for example will perform a successful, but unauthorized call.
  #   render json: object, status: :ok
  # end
  #
  #
  # def quote_params
  #   params.permit(:author, :content)
  # end
end
