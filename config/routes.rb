Rails.application.routes.draw do
  resources :references
  get 'dynamic_forms/repeatable_fields/:id', to: 'dynamic_forms/repeatable_fields#new', as: :new_dynamic_forms_repeatable_field
  delete 'dynamic_forms/repeatable_fields/:id', to: 'dynamic_forms/repeatable_fields#delete', as: :delete_dynamic_forms_repeatable_field
end
