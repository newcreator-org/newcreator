class CreateTextbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :textbooks do |t|
      t.string :title
      t.string :uuid

      t.timestamps
    end
  end
end
