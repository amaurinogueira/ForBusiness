class CreateFatos < ActiveRecord::Migration[5.2]
  def change
    create_table :fatos do |t|
      t.string :statusFato
      t.date :dataFinalizacao
      t.string :logColaborador

      t.timestamps
    end
  end
end
