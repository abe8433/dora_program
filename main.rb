require "./brave.rb"
require "./monster.rb"
# require "./character.rb"
require "./message_in_battle.rb"

character_params = [
  {name: "勇者", hp: 238, offense: 238, defense: 238},
  {name: "アークデーモン", hp: 210, offense: 195, defense: 150},
  {name: "ドラゴン", hp: 230, offense: 200, defense: 200},
  {name: "シドー", hp: 250, offense: 310, defense: 324}
]

# characters = []
# character_params.each do |param|
#   characters << Character.new(param)
# end

FIRST_MONSTER_NUM = 101
LAST_MONSTER_NUM = (FIRST_MONSTER_NUM + character_params.size) - 2

brave = Brave.new(character_params[0])
monster = Monster.new(character_params[rand(FIRST_MONSTER_NUM..LAST_MONSTER_NUM) - 100])

monster.appear

while brave.hp > 0 && monster.hp > 0
  brave.attack(monster)
  # if monster.hp == 0
  # break show_status(brave, monster)
  # end
  if monster.hp > 0
    monster.attack(brave)
  # if brave.hp == 0
  #   break show_status(brave, monster)
  end
  show_status(brave, monster)
end

battle_result(brave, monster)