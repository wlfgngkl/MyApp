json.extract! client, :id, :[firstname, :[, :lastname, :[, :dob, :[, :gender, :[, :email, :[, :phone, :[, :notifications, :[, :created_at, :updated_at
json.url client_url(client, format: :json)
