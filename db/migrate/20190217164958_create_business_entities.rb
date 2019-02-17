class CreateBusinessEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :business_entities do |t|
      t.string :title
      t.string :url
      t.string :name
      t.date :founded

      t.timestamps
    end
  end
end
