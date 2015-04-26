class AddSeasonToDrinks < ActiveRecord::Migration
  def change
    add_column :drinks, :season, :string
  end
end
