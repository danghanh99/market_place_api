require "api_constraints"

MarketPlaceApi::Application.routes.draw do
  devise_for :users
  namespace :api, defaults: { format: :json }, path: "/" do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :users, :only => [:show, :create, :update, :destroy, :index]
      resources :sessions, :only => [:create, :destroy]
    end
  end
end
