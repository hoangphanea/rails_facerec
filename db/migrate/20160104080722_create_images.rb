class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.binary :binary_data
      t.string :person_name

      t.timestamps null: false
    end

    add_index :images, :person_name
  end
end
