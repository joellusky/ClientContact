class AddHolidayToClient < ActiveRecord::Migration
  def change
    add_column :clients, :NewYearsEve, :boolean
    add_column :clients, :Thanksgiving, :boolean
    add_column :clients, :July_4th, :boolean
    add_column :clients, :HappyHolidays, :boolean
  end
end
