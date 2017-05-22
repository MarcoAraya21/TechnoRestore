json.extract! product, :id, :ptype_id, :pcategory_id, :status_id, :Nombre, :Descripcion, :Precio, :Stock, :Marca, :created_at, :updated_at
json.url product_url(product, format: :json)
