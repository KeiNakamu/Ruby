class Player
  def hand
    puts "数字を入力してください。"
    puts "0:グー, 1:チョキ, 2:パー"
    input_hand = gets.chomp
      # binding.irb
    # if input_hand == "0" || input_hand == "1" || input_hand == "2"
    if input_hand.include?("0") || input_hand.include?("1") || input_hand.include?("2")
      # binding.irb
      return input_hand.to_i
    else
      puts "不正な値です。"
      return hand #再帰処理
    end
    # case input_hand
    # when "0","1","2"
    #   return input_hand
    # else
    #   puts "不正な値です。"
    #   return  hand
    # end
  end
end

class Enemy
  def hand
    enemy_hand = rand(0..2)
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    janken = ["グー", "チョキ", "パー"]
    puts "相手の手は#{janken[enemy_hand]}です。"
      if player_hand == enemy_hand
      puts "あいこ"
      # binding.irb
       true
      elsif
        ((player_hand)-(enemy_hand)+3)%3 == 2
      # (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
      puts "あなたの勝ちです"
      # binding.irb
       false
      else
      puts "あなたの負けです"
      # binding.irb
       false
      end
  end
end

class GameStart
  def self.jankenpon
    player = Player.new
    enemy = Enemy.new
    janken = Janken.new
    next_game = true
    while next_game
      next_game = janken.pon(player.hand, enemy.hand)
    end
  end
end

GameStart.jankenpon
