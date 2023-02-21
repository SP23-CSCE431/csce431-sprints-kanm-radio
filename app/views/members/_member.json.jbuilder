json.extract! member, :id, :netid, :firstname, :lastname, :uin, :email, :phone, :shirt, :strikes, :points, :dj, :created_at, :updated_at
json.url member_url(member, format: :json)
