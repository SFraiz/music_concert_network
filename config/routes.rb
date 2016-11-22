Rails.application.routes.draw do

get '/', to: 'site#home'

resources :concerts

end