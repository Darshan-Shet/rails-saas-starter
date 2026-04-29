class Api::V1::ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    cache_key = "user:#{current_user.id}:expenses"

    expenses = Rails.cache.fetch(cache_key, expires_in: 5.minutes) do
      current_user.expenses.to_a
    end

    render json: expenses
  end

  def create
    expense = ExpenseCreator.new(current_user, expense_params).call
    render json: expense, status: :created
  rescue => e
    render json: { error: e.message }, status: :unprocessable_entity
  end

  private

  def expense_params
    params.require(:expense).permit(:title, :amount)
  end
end
