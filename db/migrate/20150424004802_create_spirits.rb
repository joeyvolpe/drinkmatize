class CreateSpirits < ActiveRecord::Migration
  def change
    create_table :spirits do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
