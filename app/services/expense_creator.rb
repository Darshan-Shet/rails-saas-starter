class ExpenseCreator
  def initialize(user, params)
    @user = user
    @params = params
  end

  def call
    expense = @user.expenses.build(@params)

    if expense.save
      Rails.cache.delete("user:#{@user.id}:expenses")
      ExpenseProcessorJob.perform_later(expense.id)
      expense
    else
      raise StandardError.new(expense.errors.full_messages.join(", "))
    end
  end
end
