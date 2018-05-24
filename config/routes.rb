Rails.application.routes.draw do
  scope module: :private, constraints: ApiVersion.new('private') do
    get '/locations/:country_code', to: 'locations#index'
    get '/target_groups/:country_code', to: 'target_groups#index'
  end

  scope module: :public, constraints: ApiVersion.new('public', true) do
    get '/locations/:country_code', to: 'locations#index'
    get '/target_groups/:country_code', to: 'target_groups#index'
  end
end
