Rails.application.routes.draw do
  scope module: 'trln_argon' do
    resources :healthchecks, path: '/health', action: :index
  end

  mount BlacklightAdvancedSearch::Engine => '/'

  get 'advanced_trln' => 'advanced_trln#index', as: 'advanced_trln'
  get 'suggest/:category', to: 'suggest#show'
  get 'catalog_count_only', to: 'catalog#count_only', as: 'catalog_count_only'
  get 'trln_count_only', to: 'trln#count_only', as: 'trln_count_only'
end
