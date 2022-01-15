class CreateTelemetries < ActiveRecord::Migration[7.0]
  def change
    create_table :telemetries do |t|
      t.integer :speed
      t.integer :mode
      t.references :bike, null: false, foreign_key: true

      t.timestamps
    end
  end
end
