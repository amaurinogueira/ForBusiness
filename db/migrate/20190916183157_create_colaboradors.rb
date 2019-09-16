class CreateColaboradors < ActiveRecord::Migration[5.2]
  def change
    create_table :colaboradors do |t|
      t.string :nomeColaborador
      t.integer :cpfColaborador
      t.integer :ctpsColaborador
      t.string :tipoColaborador

      t.timestamps
    end
  end
end
