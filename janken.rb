class Player
  def hand
    puts "数字を入力してください。"
    puts "0:グー, 1:チョキ, 2:パー, 3:終了"
    while true
      input_hand = gets.chomp
      if input_hand == "3"
        puts "終了"
        exit
      elsif input_hand == "0" ||  input_hand == "1" ||  input_hand == "2"
        return input_hand
      else
        puts "無効な値（#{input_hand}）が入力されました。もう一度数字を入力してください。"
        puts "0:グー, 1:チョキ, 2:パー"
        # input_hand = gets
      end
    end
    return input_hand
  end
end

class Enemy
  def hand
    enemy_hand = rand(3)
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    player_hand = player_hand.to_i
    janken = ["グー", "チョキ", "パー"]
    puts "相手の手は#{janken[enemy_hand]}です。"
    if player_hand == enemy_hand
      puts "あいこ"
      return true
    elsif
      (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
      puts "あなたの勝ちです"
      return false
    elsif
      (player_hand == 1 && enemy_hand == 0) || (player_hand == 2 && enemy_hand == 1) || (player_hand == 0 && enemy_hand == 2)
      puts "あなたの負けです"
      return false
    else
      puts "無効な値が入力されました。"
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new
while true
   next_game = janken.pon(player.hand, enemy.hand)
end
