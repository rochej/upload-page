Rails.application.routes.draw do


  scope "api" do
    resources :uploads
  end

  root 'main#index'
end
