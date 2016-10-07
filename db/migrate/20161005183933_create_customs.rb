class CreateCustoms < ActiveRecord::Migration
  def change
    create_table :customs do |t|
      t.string :name
      t.datetime :date_of_gave
      t.datetime :date_of_ready
      t.datetime :date_of_del
      t.integer :status, defoult: 2

      t.timestamps null: false
    end
  end
end
