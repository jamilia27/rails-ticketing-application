class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :name
      t.date :date
      t.string :genre
      t.string :venue

      t.timestamps
    end
  end
end
