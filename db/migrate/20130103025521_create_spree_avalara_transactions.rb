class CreateSpreeAvalaraTransactions < ActiveRecord::Migration
  def change
    create_table :spree_avalara_transactions do |t|
      t.references :order
      t.string :message

      t.timestamps
    end
    add_index :spree_avalara_transactions, :order_id
  end
end
