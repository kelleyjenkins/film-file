class FilmFile < Sinatra::Base
  set :root, File.expand_path("..", __dir__)
  set :method_override, true

  get '/films' do
    @films = Film.all
    erb :"films/index"
  end

  get '/films/:id' do
    film = Film.find(params[:id])
    erb :"films/show", locals: {film: film}
  end
end
