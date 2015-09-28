get '/' do
  # puts gets run on server
  puts "--- hello world turtles ---"

  # render our webpage called "index.erb"
  erb :index
end

# show all pizzas
get '/pizzas' do
  @pizzas = Pizza.all
  erb :pizza_list
end

# go to a page, to show a new pizza form
get '/pizzas/new' do
  # @pizzas <--- CANNOT SEE HERE OR ANY OTHER METHOD
  erb :new_pizza
end

# creates an actual pizza
post '/pizzas/create' do
  puts " -" * 20
  p  params
  # {"pizza_name"=>"cheese"}
  # some create pizza codes
  Pizza.create(params["pizza_name"])
  redirect '/'
end

# show / profile page for each pizza
# get '/pizzas/cheese'
get '/pizzas/:pizza_name' do
  @pizza = Pizza.search(params[:pizza_name])

  if @pizza
    erb :pizza_info
  else
    redirect '/pizzas'
  end
end

















