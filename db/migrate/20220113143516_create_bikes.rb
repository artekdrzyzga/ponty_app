class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.string :name
      t.string :engine
      t.string :serial
      t.string :color
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
