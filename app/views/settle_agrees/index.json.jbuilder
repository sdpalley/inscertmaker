json.array!(@settle_agrees) do |settle_agree|
  json.extract! settle_agree, :id, :plaintiff, :defendant, :settle_amount, :pay_date, :court, :confidential, :choice_of_law, :signature_block, :case_type, :notice_to, :indemnity, :required
  json.url settle_agree_url(settle_agree, format: :json)
end
