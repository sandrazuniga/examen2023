class CreateMotors < ActiveRecord::Migration[7.0]
  def change
    create_table :motors do |t|
      t.string :type
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
