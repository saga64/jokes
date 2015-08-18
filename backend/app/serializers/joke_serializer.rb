class JokeSerializer < ActiveModel::Serializer
  attributes :id, :body, :thumbs, :comment
end
