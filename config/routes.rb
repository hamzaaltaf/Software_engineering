Rails.application.routes.draw do
  root 'static_pages#Home'
  get 'appointments/new'
  
  get 'sessions/new'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'static_pages/Home'
  get 'static_pages/Home2'
  get 'static_pages/Services'
  get 'static_pages/Contact'
  get 'static_pages/SignIn'
  get 'static_pages/separator'
  get 'static_pages/Home'
  
  get 'comments/index'
  get 'comments/update'
  get 'comments/show'
  get 'comments/edit'
  get 'comments/destroy'
  
  get 'appointments/new'
  get 'appointments/show1'
  get 'appointments/show'


  get    'login/doc'   => 'doctor_sessions#new'
  post   'login/doc'   => 'doctor_sessions#create'
  delete 'logout'  => 'doctor_sessions#destroy'

  get    'login/pat'   => 'patient_sessions#new'
  post   'login/pat'   => 'patient_sessions#create'
  delete 'logout'  => 'patient_sessions#destroy'


  get  'doctor/:id' => 'doctors#show'
  get 'doctor/personal' => 'doctors#show1'
  get 'patient/search_doc' => 'patients#search'
  get 'patprof' => 'doctors#profile'
  get 'patient/appointments/:id'=> 'appointments#show1'
  get '/discussion-form' =>'forums#show'
  get '/question/:id' => 'forums#search'
  get 'forum/:id/:pid'=>'forums#search'
  get 'docreviews/:did' => 'reviews#show1'
  resources :activities
  resources :appointments
  resources :users
  resources:doctors
  resources:degrees
  resources:professions
  resources:patients
  resources:searches
  resources :reviews
  resources :followers
  resources :forums do
  resources :comments
  end
end
