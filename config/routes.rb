Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "essays#index"
  get "No-Studio-No-Privilege" => "essays#no_studio_no_privilege", as: :no_studio
  get "My-Argument-Is-Wrong-But" => "essays#my_argument_is_wrong_but", as: :wrong_argument
  get "How-to-Tame-a-Fly" => "essays#how_to_tame_a_fly", as: :tame_fly
  get "The-Empty-Husk-Condition" => "essays#the_empty_husk_condition", as: :empty_husk
  get "Adventures-from-the-Third-Bureau" => "essays#adventures_from_the_third_bureau", as: :third_bureau
  get "The-Bus-as-Hostile-Architecture" => "essays#the_bus_as_hostile_architecture_I", as: :bus_I
  get "CIFF-Official-Selection-Reviews" => "essays#ciff_selections", as: :ciff_selections
  get "Misogyny-as-Orientation" => "essays#misogyny_as_orientation", as: :mis_o
end
