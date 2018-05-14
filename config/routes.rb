Rails.application.routes.draw do

  get 'switch/:idhome' => 'switch#putswitch'

  get 'switch/' => 'switch#getswitch'

  get 'register/send1'

  get 'register/send2'

  get 'register/send3'

  get 'registers/:idhome' => 'register#show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
