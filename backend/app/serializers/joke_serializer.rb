class JokeSerializer < ActiveModel::Serializer
  cached
  delegate :cache_key, to: :object
end
