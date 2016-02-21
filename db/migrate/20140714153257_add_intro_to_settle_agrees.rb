class AddIntroToSettleAgrees < ActiveRecord::Migration
  def change
    add_column :settle_agrees, :intro, :string
  end
end
