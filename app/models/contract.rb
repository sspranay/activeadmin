class Contract < ActiveRecord::Base
	validates :account, presence: true, uniqueness: true
	validates :customer, presence: true
	validates :title, presence: true
	validates :contract_no, presence: true, uniqueness: true
	validates :status, inclusion: {in: %w(A C),
				message: "Status can be either A or C"}
	#validates :revenue_to_date, :funded_amount, absence: true, numericality: true
end
