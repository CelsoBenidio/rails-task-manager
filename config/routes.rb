Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #see all tasks
  get 'tasks', to: 'tasks#tasks'
  post "tasks", to: "tasks#create"

  #create new tasks
  get "tasks/new", to: "tasks#new"

  #see one specific task
  get "tasks/:id", to: "tasks#show", as: :task


  #edit and update one specfic task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  #delete one specific task
  delete "tasks/:id", to: "tasks#destroy"



end
