class GroupSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url

  has_and_belongs_to_many :characters
end
