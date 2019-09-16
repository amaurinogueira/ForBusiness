class CreateComentarios < ActiveRecord::Migration[5.2]
  def change
    create_table :comentarios do |t|
      t.string :descComentario
      t.date :dataComentario

      t.timestamps
    end
  end
end
