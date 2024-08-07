class ExtensionsController < ApplicationController
  def index
    extension = Expense.all
    render json: extension
  end

  def find_by_id
    extension = Expense.find(params[:id])
    render json: extension
  end

  def create
    extension = Expense.create(post_params)
    render json: extension
  end

  def update
    extension = Expense.find(params[:id])
    extension.update(post_params)
    render json: extension
  end

  def destroy
    extension = Expense.find(params[:id])
    extension.destroy
    render json: extension
  end

  def post_params
    params.require(:extension)
          .permit(:extension_type, :plate_number)
  end
end
