Rails.application.routes.draw do
  get '/' => 'home#index'
  get 'home/index'
  post 'home/create'
  post 'home/update/:id' => 'home#update'
  get 'home/delete/:id' => 'home#delete'
  get 'home/create_form'
  get 'home/update_form/:id' => 'home#update_form'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
