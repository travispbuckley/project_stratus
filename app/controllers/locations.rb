post '/locations' do
  location = Location.new(state: params[:state], city: params[:city])
  if location.save
    @location = location
    erb :"/users/#{current_user.id}"
  else

  end
end
