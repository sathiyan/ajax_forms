AjaxForms::Application.routes.draw do
  resources :bands

  root :to => "bands#index"

end
