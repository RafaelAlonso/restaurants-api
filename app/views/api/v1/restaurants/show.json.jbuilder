json.extract! @restaurant, :id, :name, :address
json.abacaxi @restaurant.comments do |comment|
  json.extract! comment, :id, :content
  json.laranja do
    json.extract! comment.user, :id, :email
  end
end
