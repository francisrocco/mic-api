class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.string :avatar,  default: "http://i65.tinypic.com/20fdno9.png"
      t.boolean :published,    default: false
      t.boolean :bootcamp,    default: false
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
