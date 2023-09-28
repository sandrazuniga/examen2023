class CreateMaintenances < ActiveRecord::Migration[7.0]
  def change
    create_table :maintenances do |t|
      t.string :type
      t.date :fecha
      t.string :email
      t.references :users, null: false, foreign_key: true
      t.references :cities, null: false, foreign_key: true
      t.references :materials, null: false, foreign_key: true

      t.timestamps
    end
  end
end
