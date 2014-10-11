class RemoveFieldsFromClient < ActiveRecord::Migration
  def change
    remove_column :clients, :NewYearsEve, :boolean
    remove_column :clients, :Thanksgiving, :boolean
    remove_column :clients, :July_4th, :boolean
    remove_column :clients, :HappyHolidays, :boolean
  end
end
