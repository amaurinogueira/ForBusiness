class CreateVencimentoTarefas < ActiveRecord::Migration[5.2]
  def change
    create_table :vencimento_tarefas do |t|
      t.date :dataVencimento

      t.timestamps
    end
  end
end
