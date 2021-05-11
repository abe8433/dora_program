require "./character.rb"
# require "./monster.rb"

class Brave < Character
  # attr_reader :brave

  # def initialize(characters)
  #   @brave = characters[0]
  # end
  
  def attack(monster)
    puts "#{@name}の攻撃！" 
    monster_damege = @offense - monster.defense/2
    monster.hp -= monster_damege
    monster.hp > 0 ? monster.hp : monster.hp = 0 
    puts "#{monster.name}に#{monster_damege}のダメージを与えた！"
  end
  
  # def show_status(monster)
  #   puts <<~TEXT

  #   *=*=*=*=*=*=*=*=*=*=*=*=*=*
  #   【#{@name}】HP: #{@hp}
  #   【#{monster.name}】HP: #{monster.hp}
  #   *=*=*=*=*=*=*=*=*=*=*=*=*=*
    
  #   TEXT
  # end
  
  # def battle_result(monster)
  #   if monster.hp == 0
  #     puts "#{monster.name}をやっつけた！"
  #   else @hp == 0
  #     puts "#{@name}はしんでしまった！"
  #   end
  # end
end