class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :tittle
      t.string :company
      t.string :position_id
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
