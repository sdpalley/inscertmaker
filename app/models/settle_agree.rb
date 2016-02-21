class SettleAgree < ActiveRecord::Base
	validates :plaintiff, :defendant, :settle_amount, :pay_date, :court, :confidential, :choice_of_law, 
	:signature_block, :case_type, :notice_to, :indemnity, :required, presence: true
end
