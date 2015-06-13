class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :start
      t.date :end
      t.string :room_type
      t.string :gest_name1
      t.string :gest_name2

      t.timestamps null: false
    end
  end
end
