class AddGlasswareToDrinks < ActiveRecord::Migration
  def change
    add_column :drinks, :glassware, :string
  end
end
