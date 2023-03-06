# frozen_string_literal: true

json.array! @show_hosts, partial: 'show_hosts/show_host', as: :show_host
