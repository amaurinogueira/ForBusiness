class CreateSetors < ActiveRecord::Migration[5.2]
  def change
    create_table :setors do |t|
      t.string :nomeSetor
      t.string :siglaSetor

      t.timestamps
    end
  end
end
