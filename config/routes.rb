Rails.application.routes.draw do

  mount Konacha::Engine, at: "/konacha" if defined?(Konacha)



  scope "api" do
    resources :types do
      resources :uploads
    end
  end

  root 'main#index'
end
