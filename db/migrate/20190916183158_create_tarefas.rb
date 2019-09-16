class CreateTarefas < ActiveRecord::Migration[5.2]
  def change
    create_table :tarefas do |t|
      t.string :descTarefa
      t.integer :diaVencimento

      t.timestamps
    end
  end
end
