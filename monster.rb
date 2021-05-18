require "./character.rb"
# require "./main.rb"

class Monster < Character
  def appear
    puts "#{@name}があらわれた！"
  end
  
  def attack(brave)
    puts "#{@name}の攻撃！"
    attack_rand_num = rand(0..MONSTER_RAND_NUM_MAX)
    brave_damege = @offense - brave.defense/2
    if attack_rand_num == 0
      puts "#{brave.name}は ひらりと身をかわした！"
    elsif 1 <= attack_rand_num && attack_rand_num <= MONSTER_RAND_NUM_MAX - 1
      brave.hp -= brave_damege
      puts "#{brave.name}は#{brave_damege}のダメージを受けた！"
    else
      brave_damege *= 1.25
      brave_damege = brave_damege.round
      brave.hp -= brave_damege
      puts <<~TEXT
        つうこんの いちげき！
        #{brave.name}は#{brave_damege}のダメージを受けた！
      TEXT
    end
    brave.hp > 0 ? brave.hp : brave.hp = 0
  end
end