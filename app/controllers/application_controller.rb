class ApplicationController < Sinatra::Base
  set :default_content_type, :json
  # Content_type 'application/json'
  # add routes
  get '/bakeries' do
    bakeries = Bakery.all
    bakeries.to_json
  end

  get '/bakeries/:id' do
    bakery = Bakery.find(params[:id])
    bakery.to_json
  end

  get '/baked_goods/by_price' do
    baked_goods = Bakery.order(:price).all
    baked_goods.to_json
  end

  get '/baked_goods/most_expensive' do
    baked_goods = Bakery.order(:price).last
    baked_goods.to_json
  end

end
