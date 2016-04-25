Rails.application.routes.draw do


  scope "api" do
    resources :types do
      resources :uploads
    end
  end

  root 'main#index'
end
