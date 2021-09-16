Rails.application.routes.draw do
  resources :products, only: %i[index show]
  get 'products/add-to-cart/:id', to: 'products#add_to_cart', as: :add_to_cart

  resources :wishlists, only: :index
  get 'wishlists/add-to-wishlist/:id', to: 'wishlists#add_to_wishlist', as: :add_to_wishlist
  get 'wishlists/remove-to-wishlist/:id', to: 'wishlists#remove_to_wishlist', as: :remove_to_wishlist
end
