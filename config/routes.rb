Rails.application.routes.draw do
  post '/', to: 'replacements#create'
end
