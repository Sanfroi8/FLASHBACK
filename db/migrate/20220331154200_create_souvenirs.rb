class CreateSouvenirs < ActiveRecord::Migration[7.0]
  def change
    create_table :souvenirs do |t|
      t.string :title
      t.string :timemarker
      t.text :feeling
      t.text :description

      t.timestamps
    end
  end
end
