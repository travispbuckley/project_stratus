post '/locations' do
  location = Location.new(state: params[:state], city: params[:city])
  if location.save
    Appearance.create(user_id: current_user.id, location_id: location.id)
    @location = location
    redirect "/users/#{current_user.id}"
  else
    @errors = location.errors.full_messages
    erb :"/index"
  end
end
