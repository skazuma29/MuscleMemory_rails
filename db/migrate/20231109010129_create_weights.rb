class CreateWeights < ActiveRecord::Migration[7.1]
  def change
    create_table :weights do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :weight, precision: 5, scale: 1
      t.date :date

      t.timestamps
    end
  end
end
