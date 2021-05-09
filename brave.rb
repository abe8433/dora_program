# require "./character.rb"
# require "./monster.rb"

class Brave
  attr_reader :brave

  def initialize(characters)
    @brave = characters[0]
  end
  
  def attack(monster)
    puts "#{brave.name}の攻撃！" 
    monster_damege = brave.offense - monster.monster.defense/2
    monster.monster.hp -= monster_damege
    monster.monster.hp > 0 ? monster.monster.hp : monster.monster.hp = 0 
    puts "#{monster.monster.name}に#{monster_damege}のダメージを与えた！"
  end
  
  def show_status(monster)
    puts <<~TEXT

    *=*=*=*=*=*=*=*=*=*=*=*=*=*
    【#{brave.name}】HP: #{brave.hp}
    【#{monster.monster.name}】HP: #{monster.monster.hp}
    *=*=*=*=*=*=*=*=*=*=*=*=*=*
    
    TEXT
  end
  
  def battle_result(monster)
    if monster.monster.hp == 0
      puts "#{monster.monster.name}をやっつけた！"
    else brave.hp == 0
      puts "#{brave.name}はしんでしまった！"
    end
  end
end