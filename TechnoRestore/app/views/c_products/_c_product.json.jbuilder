json.extract! c_product, :id, :ptype_id, :cstatus_id, :user_id, :Nombre, :Descripcion, :Marca, :created_at, :updated_at
json.url c_product_url(c_product, format: :json)
