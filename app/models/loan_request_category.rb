class LoanRequestCategory < ActiveRecord::Base
  belongs_to :category
  belongs_to :loan_request
end
