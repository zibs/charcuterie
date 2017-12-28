Rails.application.routes.draw do
  resources :words, only: [:index, :show] do
    get :random, on: :collection
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "essays#index"
  get "Potentially-Asked-Questions" => "essays#paqs", as: :paqs
  get "Contributors" => "essays#authors", as: :authors
  get "Information" => "essays#info", as: :info
  get "No-Studio-No-Privilege" => "essays#no_studio_no_privilege", as: :no_studio
  get "My-Argument-Is-Wrong-But" => "essays#my_argument_is_wrong_but", as: :wrong_argument
  get "How-to-Tame-a-Fly" => "essays#how_to_tame_a_fly", as: :tame_fly
  get "The-Empty-Husk-Condition" => "essays#the_empty_husk_condition", as: :empty_husk
  get "Adventures-from-the-Third-Bureau" => "essays#adventures_from_the_third_bureau", as: :third_bureau
  get "The-Bus-as-Hostile-Architecture" => "essays#the_bus_as_hostile_architecture_I", as: :bus_I
  get "Snapshots-of-the-34th-Cairo-International-Film-Festival" => "essays#ciff_selections", as: :ciff_selections
  get "Troubling-Gender-Assumptions -in-Miranda-Julys -The-First-Bad-Man" => "essays#misogyny_as_orientation", as: :mis_o
end
