Rails.application.routes.draw do
  root "uploader#index"
  
  get 'uploader/form'
  post 'uploader/upload'
  get 'uploader/download'
  get "uploader/show"
  patch 'uploader/:id', to: 'uploader#update'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
