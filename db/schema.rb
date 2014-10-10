# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141001203854) do

  create_table "accidentes", force: true do |t|
    t.string   "diligenciador"
    t.string   "eps"
    t.string   "afp"
    t.string   "arl"
    t.string   "documento"
    t.integer  "tipodoc_id"
    t.string   "tipo_de_vinculacion"
    t.string   "razon_social"
    t.string   "direccion_sede_principal"
    t.string   "direccion_reportada"
    t.string   "telefono_reportado"
    t.string   "actividad_economica_sede_principal"
    t.string   "codigo"
    t.string   "telefono_sede_principal"
    t.string   "fax_sede_principal"
    t.string   "email_sede_principal"
    t.integer  "departamento_id"
    t.integer  "municipio_id"
    t.string   "zona"
    t.string   "actividad_economica_centro_trabajo"
    t.string   "direccion_centro_trabajo"
    t.string   "telefono_ct"
    t.string   "fax_ct"
    t.string   "email_ct"
    t.integer  "departamento1"
    t.integer  "municipio1"
    t.string   "zona1"
    t.integer  "funcionario_id"
    t.date     "fchAc"
    t.string   "hora_del_accidente"
    t.string   "dia_de_la_semana"
    t.string   "jornada_en_que_sucede"
    t.boolean  "realiza_su_labor"
    t.string   "ocupacion_no_habitual"
    t.string   "tiempo_laborado"
    t.string   "lugar_donde_ocurrio_el_at"
    t.string   "mecanismo_o_formato_del_at"
    t.string   "tipo_de_lesion"
    t.string   "sitio"
    t.string   "tipo_de_accidente"
    t.string   "parte_del_cuerpo_afectado"
    t.string   "agente_del_accidente"
    t.integer  "departamento2"
    t.integer  "municipio2"
    t.string   "zona2"
    t.boolean  "mortal"
    t.date     "fecha_mortal"
    t.string   "descripcion_del_at"
    t.boolean  "hubo_personas_que_presenciaron_el_accidente"
    t.string   "testigo1"
    t.integer  "tipodoc1"
    t.string   "documento1"
    t.string   "testigo2"
    t.integer  "tipodoc2"
    t.string   "documento2"
    t.string   "responsable_informe"
    t.integer  "tipodoc3"
    t.string   "documento3"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tipoaccidente_id"
  end

  add_index "accidentes", ["departamento_id"], name: "index_accidentes_on_departamento_id"
  add_index "accidentes", ["funcionario_id"], name: "index_accidentes_on_funcionario_id"
  add_index "accidentes", ["municipio_id"], name: "index_accidentes_on_municipio_id"
  add_index "accidentes", ["tipoaccidente_id"], name: "index_accidentes_on_tipoaccidente_id"
  add_index "accidentes", ["tipodoc_id"], name: "index_accidentes_on_tipodoc_id"

  create_table "albums", force: true do |t|
    t.text     "recomendacion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "centros", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departamentos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enfermedads", force: true do |t|
    t.integer  "centro_id"
    t.integer  "tipodoc_id"
    t.string   "documento"
    t.integer  "funcionario_id"
    t.string   "codigodediagnostico"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "descripcion"
    t.date     "fecha"
    t.integer  "tipoenfermedad_id"
  end

  add_index "enfermedads", ["centro_id"], name: "index_enfermedads_on_centro_id"
  add_index "enfermedads", ["funcionario_id"], name: "index_enfermedads_on_funcionario_id"
  add_index "enfermedads", ["tipodoc_id"], name: "index_enfermedads_on_tipodoc_id"
  add_index "enfermedads", ["tipoenfermedad_id"], name: "index_enfermedads_on_tipoenfermedad_id"

  create_table "events", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "start"
    t.date     "end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcionarios", force: true do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.integer  "tipodoc_id"
    t.string   "identificacion"
    t.string   "telefono"
    t.string   "mail"
    t.integer  "centro_id"
    t.string   "codigo"
    t.string   "eps"
    t.string   "afp"
    t.string   "arl"
    t.string   "lugar_de_expedicion"
    t.string   "lugar_de_nacimiento"
    t.date     "fecha_de_nacimiento"
    t.string   "edad"
    t.string   "area"
    t.date     "fecha_de_ingreso"
    t.string   "antiguedad"
    t.string   "funciones_principales"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "genero"
    t.string   "cargo"
  end

  add_index "funcionarios", ["centro_id"], name: "index_funcionarios_on_centro_id"
  add_index "funcionarios", ["tipodoc_id"], name: "index_funcionarios_on_tipodoc_id"

  create_table "incapacidads", force: true do |t|
    t.integer  "funcionario_id"
    t.date     "fechainicio"
    t.date     "fechaterminacion"
    t.string   "totaldias"
    t.string   "diasacobrar"
    t.string   "prorroga"
    t.string   "numeroinpacacidad"
    t.string   "esp"
    t.string   "origendelaincapacidad"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tipoincapacidad_id"
  end

  add_index "incapacidads", ["funcionario_id"], name: "index_incapacidads_on_funcionario_id"
  add_index "incapacidads", ["tipoincapacidad_id"], name: "index_incapacidads_on_tipoincapacidad_id"

  create_table "incidentes", force: true do |t|
    t.integer  "centro_id"
    t.string   "area_o_proceso"
    t.boolean  "lugar_de_ocurrencia"
    t.date     "fecha_del_reporte"
    t.string   "hora_del_reporte"
    t.integer  "funcionario_id"
    t.integer  "personalinvolucrado_id"
    t.string   "otro"
    t.string   "especifique"
    t.string   "nombre_completo1"
    t.string   "email1"
    t.string   "telefono1"
    t.string   "nombre_completo2"
    t.string   "email2"
    t.string   "telefono2"
    t.string   "descripcion_del_evento"
    t.string   "nombre_del_dilenciador"
    t.string   "nombre_de_lider_de_informe"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tipoincidente_id"
  end

  add_index "incidentes", ["centro_id"], name: "index_incidentes_on_centro_id"
  add_index "incidentes", ["funcionario_id"], name: "index_incidentes_on_funcionario_id"
  add_index "incidentes", ["personalinvolucrado_id"], name: "index_incidentes_on_personalinvolucrado_id"
  add_index "incidentes", ["tipoincidente_id"], name: "index_incidentes_on_tipoincidente_id"

  create_table "municipios", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personalinvolucrados", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "riesgos", force: true do |t|
    t.string   "empresa"
    t.integer  "funcionario_id"
    t.date     "fecha"
    t.string   "areadeseccionopuestodetrabajo"
    t.integer  "tiporiesgo_id_id"
    t.string   "factorderiesgo"
    t.string   "fuentegeneradora"
    t.string   "efectoconocido"
    t.string   "numerodeexpuestos"
    t.string   "tiempo"
    t.string   "controlesexitentes"
    t.string   "controlesrecomendados"
    t.string   "consecuencia"
    t.string   "exposicion"
    t.string   "factordeponderacion"
    t.string   "repercuciondelriesgo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tiporiesgo_id"
  end

  add_index "riesgos", ["funcionario_id"], name: "index_riesgos_on_funcionario_id"
  add_index "riesgos", ["tiporiesgo_id"], name: "index_riesgos_on_tiporiesgo_id"

  create_table "tipoaccidentes", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipodocs", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipoenfermedads", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipoincapacidads", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipoincidentes", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tiporiesgos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",            null: false
    t.string   "crypted_password", null: false
    t.string   "salt",             null: false
    t.boolean  "rol"
    t.string   "nombre"
    t.string   "documento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
