get '/' do
  # render home page
  @user = User.all
  @reviews = Review.all

  erb :index
end
