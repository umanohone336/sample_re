class ListsController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @list = List.new
  end

  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    list = List.new(list_params)
#     今回はローカル変数を利用して、createアクションの処理を行います。
# @のついたインスタンス変数とローカル変数の違いについて、
# @のついているインスタンス変数はビューファイルへ受け渡すことができます。
# @のついてないローカル変数は、ビューファイルに受け渡しができません。アクション内でしか利用できません。
# 今回はビューファイルへの受け渡しが必要ではないため、ローカル変数を利用しています。
# インスタンス変数でも同様の処理はできますが、無駄に利用できる範囲が広い変数は、今後沢山の変数を利用するようになった際、不具合が起きる原因になります。

    # 3. データをデータベースに保存するためのsaveメソッド実行
    list.save
    # 4. トップ画面へリダイレクト
    redirect_to '/top'
  end

  def index
  end

  def show
  end

  def edit
  end

  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end

end
# インスタンス変数

# 変数の名前の先頭に@マークをつける
# コントローラーとViewでデータの受け渡しができる

# ローカル変数

# 変数の名前の先頭には何もつけない
# コントローラーとViewでデータの受け渡しができない

# params
# formから送られてくるデータはparamsの中に入っています。
# require
# 送られてきたデータの中からモデル名(ここでは:list)を指定し、データを絞り込みます。
# permit
# requireで絞り込んだデータの中から、保存を許可するカラムを指定します。