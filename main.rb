require "./brave.rb"
require "./monster.rb"
require "./character.rb"

character_params = [
  {name: "勇者", hp: 238, offense: 238, defense: 238},
  {name: "アークデーモン", hp: 210, offense: 195, defense: 150},
  {name: "ドラゴン", hp: 230, offense: 200, defense: 200},
  {name: "シドー", hp: 250, offense: 310, defense: 324}
]

characters = []
character_params.each do |param|
  characters << Character.new(param)
end

FIRST_MONSTER_NUM = 101
LAST_MONSTER_NUM = (FIRST_MONSTER_NUM + characters.size) - 2

brave = Brave.new(characters)
monster = Monster.new(characters)

monster.appear
  while brave.brave.hp && monster.monster.hp > 0
    brave.attack(monster)
    if monster.monster.hp == 0
      break brave.show_status(monster)
    end
    monster.attack(brave)
    if brave.brave.hp == 0
      break brave.show_status(monster)
    end
    brave.show_status(monster)
  end

brave.battle_result(monster)