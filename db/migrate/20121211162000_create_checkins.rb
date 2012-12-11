class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.string :name
      t.string :contact
      t.datetime :arrive
      t.datetime :leave
      t.text :comment

      t.timestamps
    end
  end
end
