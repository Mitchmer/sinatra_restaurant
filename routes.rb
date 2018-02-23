class Items < Sinatra::Base
  
  
  get "/" do
    erb :home
  end

  get "/items/new" do
    erb :new
  end

  post "/menu" do
    binding.pry
  end
end