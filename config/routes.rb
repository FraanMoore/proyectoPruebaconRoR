Rails.application.routes.draw do
  get '/products', to: 'products#index' #cuando alguien haga una peticion de tipo get se enviara a un controlador llamado 'products' al metedo 'index'
                                        #en index declaramos toda la logica para devolver los productos
  get '/products/:id', to: 'products#show', as: :product
  
end
