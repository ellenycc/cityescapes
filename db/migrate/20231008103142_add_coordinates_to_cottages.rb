class AddCoordinatesToCottages < ActiveRecord::Migration[7.0]
  def change
    add_column :cottages, :latitude, :float
    add_column :cottages, :longitude, :float
  end
end
