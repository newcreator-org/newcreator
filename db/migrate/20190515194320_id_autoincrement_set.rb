class IdAutoincrementSet < ActiveRecord::Migration[5.2]
  def change
    execute "ALTER TABLE textbooks AUTO_INCREMENT = 1001"
  end
end
