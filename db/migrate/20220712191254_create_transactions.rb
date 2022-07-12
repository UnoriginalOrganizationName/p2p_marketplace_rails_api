class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.date :start_date
      t.date :end_date
      t.belongs_to :listings, null: false, foreign_key: true
      t.belongs_to :requests, null: false, foreign_key: true

      t.timestamps
    end
  end
end
