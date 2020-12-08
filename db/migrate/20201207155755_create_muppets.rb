class CreateMuppets < ActiveRecord::Migration[6.0]
  def change
    create_table :muppets do |t|
      t.string :name
      t.string :fur_color
      t.string :personality
      t.string :partner
      t.string :image
      t.belongs_to :show, null: false, foreign_key: true

      t.timestamps
    end
  end
end
