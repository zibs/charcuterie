Rails.application.routes.draw do
  resources :words, only: [:index, :show] do
    get :random, on: :collection
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "essays#index"
  get "Potentially-Asked-Questions" => "essays#paqs", as: :paqs
  get "Contributors" => "essays#authors", as: :authors
  get "Information" => "essays#info", as: :info
  get "you-should-eat-something-before-coming-over" => "essays#charc_one", as: :charc_one
  get "future-decapitations-under-posh-hats" => "essays#charc_two", as: :charc_two
  get "need-not-pander" => "essays#charc_three", as: :charc_three
  get "No-Studio-No-Privilege" => "essays#no_studio_no_privilege", as: :no_studio
  get "My-Argument-Is-Wrong-But" => "essays#my_argument_is_wrong_but", as: :wrong_argument
  get "How-to-Tame-a-Fly" => "essays#how_to_tame_a_fly", as: :tame_fly
  get "The-Empty-Husk-Condition" => "essays#the_empty_husk_condition", as: :empty_husk
  get "Adventures-from-the-Third-Bureau" => "essays#adventures_from_the_third_bureau", as: :third_bureau
  get "The-Bus-as-Hostile-Architecture" => "essays#the_bus_as_hostile_architecture_I", as: :bus_I
  get "Snapshots-of-the-34th-Cairo-International-Film-Festival" => "essays#ciff_selections", as: :ciff_selections
  get "Troubling-Gender-Assumptions -in-Miranda-Julys -The-First-Bad-Man" => "essays#misogyny_as_orientation", as: :mis_o
  # 3
  get "The-Bus-As-Hostile-Architecture-II" => "essays#bus_two", as: :bus_two
  get "When-Exhibitions-Flatten-Black-Experience" => "essays#flatten_exp", as: :flatten_exp
  get "Seven-Years-of-Tenderness" => "essays#seven_years", as: :seven_years
  get "Two-Mistakes" => "essays#two_mistakes", as: :two_mistakes
  get "Nice-Poem" => "essays#nice_poem", as: :nice_poem
  get "Book-Review-Tell-Them-I-Said-NO" => "essays#tell_them", as: :tell_them

end
