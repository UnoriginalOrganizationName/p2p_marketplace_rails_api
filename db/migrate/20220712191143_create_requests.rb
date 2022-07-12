class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.date :start_date
      t.date :end_date
      t.belongs_to :users, null: false, foreign_key: true
      t.belongs_to :listings, null: false, foreign_key: true

      t.timestamps
    end
  end
end
