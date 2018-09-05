class Houses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :address

      t.timestamps # always include timestamps
    end
  end
end
