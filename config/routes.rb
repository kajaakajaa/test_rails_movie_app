Rails.application.routes.draw do
  root "uploader#index"
  
  get 'uploader/index'
  get 'uploader/form'
  post 'uploader/upload'
  get 'uploader/download'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
