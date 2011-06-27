Rails.application.routes.draw do
  mount KrugForum::Engine => "/krug_forum"

  # include named routes in the test env, see: https://github.com/rails/rails/issues/1265
  if Rails.env.test?
    namespace :krug_forum do
      resources :posts
    end
  end
end
