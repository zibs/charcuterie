Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "essays#index"
  get "No-Studio-No-Privilege" => "essays#no_studio_no_privilege", as: :no_studio
  get "My-Argument-Is-Wrong-But" => "essays#my_argument_is_wrong_but", as: :wrong_argument
end
