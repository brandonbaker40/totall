class AddDeletedAtToBalances < ActiveRecord::Migration[5.2]
  def change
    add_column :balances, :deleted_at, :datetime
    add_index :balances, :deleted_at
  end
end
