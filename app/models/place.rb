class Place < ActiveRecord::Base
	has_many :expenses
	has_many :expenses_everyday, class_name: "Expense"
	has_many :expenses_term, class_name: "Expense"
  accepts_nested_attributes_for :expenses
end
