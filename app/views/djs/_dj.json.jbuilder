# frozen_string_literal: true

json.extract! dj, :id, :dj_id, :member_id, :speciality, :picture, :created_at, :updated_at
json.url dj_url(dj, format: :json)
