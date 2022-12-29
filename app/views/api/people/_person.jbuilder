# frozen_string_literal: true

json.id person.id
json.name person.name
json.releases do 
  json.array! person.releases_created, partial: 'release', as: :release
end