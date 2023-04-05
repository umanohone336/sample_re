Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create'
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

# GETとPOSTには、次のような違いがあります。

# GETはデータの取得をするためのHTTPメソッド
# POSTはデータを新規保存するためのHTTPメソッド
# 基本的なwebアプリケーションの場面では

# aタグなどで、画面遷移の際に新しいページを取得する場合にはGET
# フォームなどの投稿をする場合にはPOSTのように使い分けられることが多いです。