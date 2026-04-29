class ExpenseProcessorJob < ApplicationJob
  queue_as :default

  def perform(expense_id)
    expense = Expense.find(expense_id)

    # simulate real work
    Rails.logger.info "Processing expense: #{expense.id} - #{expense.title}"
  end
end
