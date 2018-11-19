class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :name
      t.boolean :active
      t.text :note
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
