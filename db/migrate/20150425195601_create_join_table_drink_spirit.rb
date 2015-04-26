class CreateJoinTableDrinkSpirit < ActiveRecord::Migration
  def change
    create_join_table :drinks, :spirits do |t|
      # t.index [:drink_id, :spirit_id]
      # t.index [:spirit_id, :drink_id]
    end
  end
end
