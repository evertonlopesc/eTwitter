class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.references :relationship, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :message
      t.boolean :is_active

      t.timestamps
    end
  end
end
