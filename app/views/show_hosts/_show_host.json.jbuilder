# frozen_string_literal: true

json.extract! show_host, :id, :showid, :djid, :created_at, :updated_at
json.url show_host_url(show_host, format: :json)
