json.array!(@insurance_certificates) do |insurance_certificate|
  json.extract! insurance_certificate, :id, :form_number, :insuror, :occurrence_limit, :aggregate_limit, :named_insured, :policy_start_date, :policy_end_date, :certificate_holder, :additional_insured, :number_of_certificates_issued
  json.url insurance_certificate_url(insurance_certificate, format: :json)
end
