# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  p names << "斎藤"
end

def q2
  array1 = %w(dog cat fish)
  array2 = %w(bird bat tiger)

  # 以下に回答を記載
  p array = array1 + array2
end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載
  puts numbers.count(3)
end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載
  # 修正前
  # p sports.select { |e| e }
  p sports.compact!
end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
  # 修正前（コメントアウト部分）
  # p array1.length == 0
  # p array2.length == 0
  p array1.empty?
  p array2.empty?
end

def q6
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載
  p numbers2 = numbers1.map { |e| e*10 }
end

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載
  # 修正前
  # p array.map(&:to_i)
  p array.map!(&:to_i)
end

def q8
  programming_languages = %w(ruby php python javascript)

  # 以下に回答を記載
  programming_languages.map!(&:capitalize)
  upper_case_programming_languages = programming_languages.map(&:upcase)

  p programming_languages
  p upper_case_programming_languages
end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names.each.with_index(1) do |name,n|
    puts "会員No.#{n} #{name}さん"
  end
end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載
  foods.each do |food|
    if food.include?("うに")
      puts "好物です"
    else
      puts "まぁまぁ好きです"
    end
  end

end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載
  sports.flatten.uniq.each.with_index(1) do |sport,n|
    puts "No#{n} #{sport}"
  end
end

def q12
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載
  puts data[:user][:name]
end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # 以下に回答を記載
  user_data.update(update_data)
  p user_data
end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載
  data_keys = data.keys
  p data_keys
end

def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載
  # 修正前
  # def include_age?(hash)
  #   if hash.find { |key,value| key == :age }
  #     puts "OK"
  #   else
  #     puts "NG"
  #   end
  # end
  # include_age?(data1)
  # include_age?(data2)
  p data1.key?(:age)
  p data2.key?(:age)
end

def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載
  users.each do |user|
    puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}歳です。"
  end
end

class UserQ17
  # 以下に回答を記載
  # 変更前
  # attr_accessor :name, :age, :gender, :admin
  # def initialize(name:, age:, gender:, admin:)
  #   @name,@age,@gender,@admin = name,age,gender,admin
  # end
  # ↓変更後（アクセサメソッドの削除、オプション引数へ変更）
  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
    @gender = params[:gender]
    @admin = params[:admin]
  end

  # 変更前
  # def info
  #   puts "名前：#{@name}"
  #   puts "年齢：#{@age}"
  #   puts "性別：#{@gender}"
  #   puts "管理者権限：#{@admin ? "有り" : "無し"}"
  # end
  # ↓変更後（ヒアドキュメントへ変更）
  def info
    puts <<~EOS
      名前：#{@name}
      年齢：#{@age}
      性別：#{@gender}
      管理者権限：#{@admin ? "有り" : "無し"}
    EOS
  end
end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男", admin: true)
  user2 = UserQ17.new(name: "テルヤ", age: 26, gender: "男", admin: false)

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
  # 以下に回答を記載
  # 消去　attr_accessor :name, :age
  def initialize(name:, age:)
    @name,@age = name,age
  end

  #変更前
  # def introduce
  #   if @age >= 20
  #     puts "こんにちは、#{@name}と申します。宜しくお願いいたします。"
  #   else
  #     puts "はいさいまいど〜、#{@name}です！！！"
  #   end
  # end
  # 変更後（if文の戻り値からputsを消去）
  def introduce
    if @age >= 20
      "こんにちは、#{@name}と申します。宜しくお願いいたします。"
    else
      "はいさいまいど〜、#{@name}です！！！"
    end
  end
end

def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  puts user1.introduce
  puts user2.introduce
end

class Item
  # 以下を修正して下さい
  attr_accessor :name
  def initialize(name:)
    @name = name
  end
end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

class UserQ20
  # 以下に回答を記載
  attr_accessor :name, :generation
  def initialize(name:, age:)
    @name = name
    @generation = case age
                  when 0..5
                    :infant
                  when 6..12
                    :children
                  when 13..64
                    :adult
                  when 65..120
                    :senior
                  end
  end
end

class Zoo
  # 以下に回答を記載
  def initialize(name:, entry_fee:)
    @name,@entry_fee = name, entry_fee
  end

  def info_entry_fee(user)
    puts "#{user.name}さんの入場料金は #{@entry_fee[user.generation]} 円です。"
  end
end


def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]

  users.each do |user|
    zoo.info_entry_fee(user)
  end
end
