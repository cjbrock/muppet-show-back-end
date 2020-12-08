class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :show_name
      t.string :episode_name
      t.integer :episode_number
      t.datetime :date
      t.string :link
      t.boolean :availability

      t.timestamps
    end
  end
end
