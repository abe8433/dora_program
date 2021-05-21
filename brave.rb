require "./character.rb"

class Brave < Character
  def attack(monster)
    puts "#{@name}の攻撃！"
    attack_rand_num = rand(0..BRAVE_RAND_NUM_MAX)
    monster_damage = @offense - monster.defense/2
    if attack_rand_num == 0
      puts "#{monster.name}は ひらりと身をかわした！"
    elsif 1 <= attack_rand_num && attack_rand_num <= BRAVE_RAND_NUM_MAX - 2
      monster.hp -= monster_damage
      puts "#{monster.name}に#{monster_damage}のダメージを与えた！"
    else
      monster_damage *= 1.3
      monster_damage = monster_damage.round
      monster.hp -= monster_damage
      puts <<~TEXT
        かいしんの いちげき！
        #{monster.name}に#{monster_damage}のダメージを与えた！
      TEXT
    end
    monster.hp > 0 ? monster.hp : monster.hp = 0
    # または monster.hp = [monster.hp, 0].max でもよい？
  end
end