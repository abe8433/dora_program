require "./character.rb"
# require "./brave.rb"

class Monster < Character
  # attr_reader :monster

  # def initialize(characters)
  #   @monster = characters[rand(FIRST_MONSTER_NUM..LAST_MONSTER_NUM) - 100]
  # end
  
  def appear
    puts "#{@name}があらわれた！"
  end
  
  def attack(brave)
    puts "#{@name}の攻撃！"
    brave_damege = @offense - brave.defense/2
    brave.hp -= brave_damege
    brave.hp > 0 ? brave.hp : brave.hp = 0
    puts "#{brave.name}は#{brave_damege}のダメージを受けた！"
  end
end