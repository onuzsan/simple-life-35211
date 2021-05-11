class CreateSimples < ActiveRecord::Migration[6.0]
  def change
    create_table :simples do |t|
      t.string       :title ,              null: false
      t.text         :sentense,         null: false
      t.references   :user,                foreign_key: true  
      t.timestamps
    end
  end
end
