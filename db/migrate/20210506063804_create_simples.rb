class CreateSimples < ActiveRecord::Migration[6.0]
  def change
    create_table :simples do |t|
      t.string :name
      t.string :text
      t.text :image

      t.timestamps
    end
  end
end
