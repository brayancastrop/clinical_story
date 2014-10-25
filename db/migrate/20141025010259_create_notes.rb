class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :content
      t.references :patient, index: true

      t.timestamps
    end
  end
end
