class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url

  has_many :groups
end
