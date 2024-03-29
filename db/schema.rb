# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_16_183201) do

  create_table "colaboradors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nomeColaborador"
    t.integer "cpfColaborador"
    t.integer "ctpsColaborador"
    t.string "tipoColaborador"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comentarios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "descComentario"
    t.date "dataComentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empresas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nomeEmpresa"
    t.string "cnpjEmpresa"
    t.string "tipoEmpresa"
    t.string "statusEmpresa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fatos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "statusFato"
    t.date "dataFinalizacao"
    t.string "logColaborador"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "setors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nomeSetor"
    t.string "siglaSetor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tarefas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "descTarefa"
    t.integer "diaVencimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vencimento_tarefas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "dataVencimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
