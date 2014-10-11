class AddHolidaysToClient < ActiveRecord::Migration
  def change
    add_column :clients, :new_years, :boolean
    add_column :clients, :thanksgiving, :boolean
    add_column :clients, :'4th_of_july', :boolean
    add_column :clients, :happy_holidays, :boolean
  end
end
