Rails.application.routes.draw do
  get 'loggers' => 'loggers#index'
  put 'loggers' => 'loggers#create'
end
