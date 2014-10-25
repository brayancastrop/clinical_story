class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :identification
      t.references :account, index: true

      t.timestamps
    end
  end
end
