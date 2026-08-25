class CreateFlights < ActiveRecord::Migration[8.1]
  def change
    create_table :flights do |t|
      t.belongs_to :departure_airport, foreign_key: { to_table: :airports }, null: false
      t.belongs_to :arrival_airport, foreign_key: { to_table: :airports }, null: false
      t.datetime :start
      t.interval :duration

      t.timestamps
    end
  end
end
