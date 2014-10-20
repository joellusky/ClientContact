class Rename4thInClient < ActiveRecord::Migration
  def change
    rename_column :clients, :'4th_of_july', :july
  end
end
