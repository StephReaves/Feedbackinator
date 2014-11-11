get '/review/sent' do
  @reviews = Review.where(sender_id: session[:user_id])

  erb :'/review/sent'
end


get '/review/:id' do |id|
  @review = Review.find(id)

  erb :'/review/show'
end

