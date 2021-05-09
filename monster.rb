# require "./character.rb"
# require "./brave.rb"

class Monster
  attr_reader :monster

  def initialize(characters)
    @monster = characters[rand(FIRST_MONSTER_NUM..LAST_MONSTER_NUM) - 100]
  end
  
  def appear
    puts "#{monster.name}があらわれた！"
  end
  
  def attack(brave)
    puts "#{monster.name}の攻撃！"
    brave_damege = monster.offense - brave.brave.defense/2
    brave.brave.hp -= brave_damege
    brave.brave.hp > 0 ? brave.brave.hp : brave.brave.hp = 0
    puts "#{brave.brave.name}は#{brave_damege}のダメージを受けた！"
  end
end