require "./character.rb"
# require "./main.rb"

class Monster < Character
  def attack(brave)
    puts "#{@name}の攻撃！"
    attack_rand_num = rand(0..MONSTER_RAND_NUM_MAX)
    brave_damage = @offense - brave.defense/2
    if attack_rand_num == 0
      puts "#{brave.name}は ひらりと身をかわした！"
    elsif 1 <= attack_rand_num && attack_rand_num <= MONSTER_RAND_NUM_MAX - 1
      brave.hp -= brave_damage
      puts "#{brave.name}は#{brave_damage}のダメージを受けた！"
    else
      brave_damage *= 1.25
      brave_damage = brave_damage.round
      brave.hp -= brave_damage
      puts <<~TEXT
        つうこんの いちげき！
        #{brave.name}は#{brave_damage}のダメージを受けた！
      TEXT
    end
    brave.hp > 0 ? brave.hp : brave.hp = 0
    # または brave.hp = [brave.hp, 0].max でもよい？
  end
end