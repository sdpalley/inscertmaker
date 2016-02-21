class AddIntoTextToSettleAgrees < ActiveRecord::Migration
  def change
    add_column :settle_agrees, :intro_text, :text
  end
end
