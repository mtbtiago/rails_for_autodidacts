json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :start, :end, :room_type, :gest_name1, :gest_name2
  json.url reservation_url(reservation, format: :json)
end
