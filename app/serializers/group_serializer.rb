class GroupSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url

  has_many :characters
end
