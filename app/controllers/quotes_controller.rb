class QuotesController < ApplicationController

  def index
    quotes = Quote.order('created_at DESC')
    render json: {status: "SUCCESS", message: "You've loaded quotes", data:quotes}, status: :ok
  end

  def show
    quote = Quote.find(params[:id])
    render json: {status: "SUCCESS", message: "You've loaded quotes", data:quote}, status: :ok
  end

  def create
    quote = Quote.create(quote_params)
    # Create an if statement unprocessable entities
    if quote.save
      render json: {status: "SUCCESS", message: "You've saved a quote", data:quote}, status: :ok
    else
      render json: {status: "Error", message: "Quote not saved", data:quote.errors}, status: :unprocessable_entity
    end
  end

  # def update
  #   quote = Quote.find(params[:id])
  #   if quote.update_attributes(quote_params)
  #     render json: {status: "SUCCESS", message: "You've updated the goods", data:quote}, status: :ok
  #   else
  #     render json: {status: "Error", message: "Did not update"}, data:quote}, status: :unprocessable_entity
  #   end
  # end


  def destroy
    quote = Quote.find(params[:id])
    quote.destroy
    render json: {status: "SUCCESS", message: "Quote removed.", data:quote}, status: :ok
  end

  private
  def json_response(object, status = :ok)
    # Could also list 200 as status code. Changing to 401 for example will perform a successful, but unauthorized call.
    # render json: status: :ok
  end

  def quote_params
    params.permit(:author, :content)
  end
end
