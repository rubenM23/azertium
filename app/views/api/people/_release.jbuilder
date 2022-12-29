# frozen_string_literal: true

json.id release.id
json.creator_id release.creator_id
json.receiver_id release.receiver_id
json.subject release.subject
json.content release.content
json.previous_release_id release.previous_release_id
json.attached_files release.attacheds.count