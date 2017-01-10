Rails.application.routes.draw do
  resources :topics
 root 'topics#index'
 get 'about' => 'topics#about'
 resources :topics do
   member do
     post 'upvote'
   end
   member do
     post 'downvote'
   end
 end
end
