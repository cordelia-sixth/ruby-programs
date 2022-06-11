# 基本的なGETリクエスト
require 'uri'
require 'net/HTTP'

# リクエスト先のURL
uri = URI('https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY')

# GETリクエストしてレスポンスを受け取る
res = Net::HTTP.get_response(uri)

# 処理が成功したら結果を表示
puts res.body if res.is_a?(Net::HTTPSuccess)


# クエリパラメータを結合する
require 'uri'
require 'net/HTTP'

# リクエスト先のURL
uri = URI('https://api.nasa.gov/planetary/apod')

# パラメータをハッシュで定義
params = { :api_key => 'my_api_key' }

# 最初に定義したURLにクエリとして加える。この時web形式にエンコードする
# https://api.nasa.gov/planetary/apod?api_key=
uri.query = URI.encode_www_form(params)
