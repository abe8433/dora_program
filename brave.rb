require "./character.rb"

class Brave < Character
  def attack(monster)
    puts "#{@name}の攻撃！"
    attack_rand_num = rand(0..BRAVE_RAND_NUM_MAX)
    monster_damege = @offense - monster.defense/2
    if attack_rand_num == 0
      puts "#{monster.name}は ひらりと身をかわした！"
    elsif 1 <= attack_rand_num && attack_rand_num <= BRAVE_RAND_NUM_MAX - 2
      monster.hp -= monster_damege
      puts "#{monster.name}に#{monster_damege}のダメージを与えた！"
    else
      monster_damege *= 1.3
      monster_damege = monster_damege.round
      monster.hp -= monster_damege
      puts <<~TEXT
        かいしんの いちげき！
        #{monster.name}に#{monster_damege}のダメージを与えた！
      TEXT
    end
    monster.hp > 0 ? monster.hp : monster.hp = 0
  end
end