class CreateInsuranceCertificates < ActiveRecord::Migration
  def change
    create_table :insurance_certificates do |t|
      t.integer :form_number
      t.string :insuror
      t.integer :occurrence_limit
      t.integer :aggregate_limit
      t.string :named_insured
      t.date :policy_start_date
      t.date :policy_end_date
      t.string :certificate_holder
      t.string :additional_insured
      t.integer :number_of_certificates_issued

      t.timestamps
    end
  end
end
