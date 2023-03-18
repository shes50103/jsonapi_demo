class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.float :total
      t.references :event, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.boolean :checked_in

      t.timestamps
    end
  end
end
