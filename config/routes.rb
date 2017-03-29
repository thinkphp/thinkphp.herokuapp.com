Rails.application.routes.draw do
  get '/homepage',      to: 'kboy#homepage'
  get '/post',          to: 'kboy#post'
  get '/project',       to: 'kboy#project'
  get '/about',         to: 'kboy#about'
  get '/contact',       to: 'kboy#contact'


  root 'kboy#homepage'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
