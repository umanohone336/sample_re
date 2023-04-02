Rails.application.routes.draw do
  get 'lists/new'
  get 'lists/index'
  get 'lists/show'
  get 'lists/edit'
  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
# rails g controller lists new index show edit
# コントローラ名の後にアクション名を付けることで、viewやRoutingが自動で作成されるのでした。
# create, update, destroyがありません。 後の章で詳しく述べますが、
# これらのアクションはviewが必要ではないアクションです。 
# 余計なファイルが作成されるのを防ぐために、これらのアクションは省略しています。