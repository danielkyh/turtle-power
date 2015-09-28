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
  Pizza.create(params[:pizza_name])
  redirect '/'
end

# show / profile page for each pizza
# get '/pizzas/cheese'
get '/pizzas/:pizza_name' do
  @pizza = Pizza.search(params[:pizza_name])

  # if @pizza exists, go to that page
  # otherwise, redirect back to the pizza list
  if @pizza
    erb :pizza_info
  else
    redirect '/pizzas'
  end
end

# post route to delete a specific pizza
post '/pizzas/:pizza_name/delete' do
  puts '- ' * 20
  p params

  Pizza.delete(params[:pizza_name])
  redirect '/pizzas'
end

# update
=begin

update is pretty much the same except we would
find the same pizza and .update it  

=end














