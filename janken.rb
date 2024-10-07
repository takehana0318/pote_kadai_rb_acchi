while true 
  choices = { 0 => "グー", 1 => "チョキ", 2 => "パー" }
  
  # じゃんけんの入力処理
  user_input = nil
  loop do
    puts "じゃんけん..."
    puts "0(グー) 1(チョキ) 2(パー)"
    user_input = gets.chomp
    break if ["0", "1", "2"].include?(user_input)
    puts "不正な入力です。0, 1, 2のいずれかを入力してください。"
  end

  computer_choice = rand(0..2).to_s

  puts "ホイ！"
  puts "--------------------"
  puts "あなた: #{choices[user_input.to_i]}を出しました"
  puts "相手: #{choices[computer_choice.to_i]}を出しました"

  # 勝敗の判定
  janken_flg = 0
  case [user_input, computer_choice]
  when ["0", "1"], ["1", "2"], ["2", "0"]
    puts "あなたの勝ち！"
    janken_flg = 1
  when ["1", "0"], ["2", "1"], ["0", "2"]
    puts "あなたの負け！"
    janken_flg = 2
  else
    puts "引き分けです。"
    puts "--------------------"
    next
  end

  # あっち向いてホイの入力処理
  choices = { 0 => "上", 1 => "下", 2 => "左", 3 => "右" }
  user_acchi_input = nil
  loop do
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"
    user_acchi_input = gets.to_i
    break if (0..3).include?(user_acchi_input)
    puts "不正な入力です。0から3のいずれかを入力してください。"
  end

  computer_acchi_choice = rand(0..3)

  puts "あなた: #{choices[user_acchi_input]}"
  puts "相手: #{choices[computer_acchi_choice]}"

  if user_acchi_input == computer_acchi_choice
    if janken_flg == 1
      puts "あなたの勝ちです"
    else
      puts "あなたの負けです"
    end
    break
  end
end
