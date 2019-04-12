ActiveAdmin.register Event do
    permit_params  :user_id, :name, :event_date, :event_picture_url, :descritption, :public

end
