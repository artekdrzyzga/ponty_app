class AddManufactureDateToBike < ActiveRecord::Migration[7.0]
  def change
    add_column :bikes, :date_of_manufacture, :date
  end
end
