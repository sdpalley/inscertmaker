class CreateSettleAgrees < ActiveRecord::Migration
  def change
    create_table :settle_agrees do |t|
      t.string :plaintiff
      t.string :defendant
      t.integer :settle_amount
      t.date :pay_date
      t.string :court
      t.boolean :confidential
      t.string :choice_of_law
      t.string :signature_block
      t.string :case_type
      t.string :notice_to
      t.string :indemnity
      t.boolean :required

      t.timestamps
    end
  end
end
