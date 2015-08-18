class JokeSerializer < ActiveModel::Serializer
  cache key: 'joke', expires_in: 3.hours
  attributes :id, :body, :thumbs
  has_many :comments
end
