
class Expense < ApplicationRecord
  belongs_to :expense_type
  belongs_to :trip
end