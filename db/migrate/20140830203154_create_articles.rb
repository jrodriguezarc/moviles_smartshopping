class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.string :costo
      t.string :email
      t.string :direccion

      t.timestamps
    end
  end
end
