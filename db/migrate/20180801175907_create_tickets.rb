class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :price
      t.belongs_to :user, foreign_key: true
      t.belongs_to :concert, foreign_key: true

      t.timestamps
    end
  end
end
