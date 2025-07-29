class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.references :client, null: false, foreign_key: true
      t.datetime :time

      t.timestamps
    end
  end
end
