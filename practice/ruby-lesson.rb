# num = 1 

# while num <= 50
#     if num % 3 == 0
#         puts "Aho"
#     elsif num.to_s.include?("3")
#         puts "Aho"
#     else
#         puts num
#     end
#     num += 1
# end

# result =  8   # 0～9の中からランダムで数字が選ばれたものを変数resultに格納してください
# input = ""    # ループの条件でユーザーからの入力値を使いたい場合はここで空の変数として先に定義しておく。
# while input != 8 
#      puts "0～9の数字を入力してください"
#     input = gets.to_i      # ユーザーから入力を受けましょう
#     if input > 8
#         puts "それより小さい数です"
#     elsif input < 8
#         puts "それより大きい数です"
#     else input == 8
#         puts "正解です！"
#         exit
#     end
# end


def register_review(reviews)  
    # レビューを登録するメソッドを完成させてください。引数も利用しましょう。
    puts "商品名を入力してください"
    input_name = gets.chomp # ユーザーの入力を受け付けてください
    puts "感想を入力してください"
    input_impression = gets.chomp # ユーザーの入力を受け付けてください

    review = { name: input_name, impression: input_impression}# ユーザーの入力をハッシュにまとめましょう
    reviews << review # ハッシュにしたものを、whileの前に定義したreviewsという配列に格納しましょう
end

def show_reviews(reviews) 
    puts "----------------------------"
    puts "商品名 :【ユーザーが入力した商品名をここに表示】"
    puts "感想：【ユーザーが入力した感想をここに表示】"
    reviews.each_with_index do |review, index|
        puts "[#{index + 1}] #{review[:name]}"
    end
    input = gets.to_i
end

reviews = []
while true do
    puts "番号を入力してください"
    puts "[1] レビューを登録する"
    puts "[2] レビューの一覧を見る"
    puts "[3] アプリを終了する。"

    input = gets.to_i

    case input
    when 1
        register_review(reviews) # レビューを登録するメソッドを呼び出してください

    when 2
        show_reviews(reviws) # レビュー一覧を表示するメソッドを呼び出してください

    when 3
        exit # アプリケーションを終了する処理を書いてください
    end
end