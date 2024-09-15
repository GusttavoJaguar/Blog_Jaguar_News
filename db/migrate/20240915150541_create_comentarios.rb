class CreateComentarios < ActiveRecord::Migration[7.2]
  def change
    create_table :comentarios do |t|
      t.references :post, null: false, foreign_key: true
      t.text :texto_comentario

      t.timestamps
    end
  end
end
