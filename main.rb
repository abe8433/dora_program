require "./brave.rb"
require "./monster.rb"
require "./message_in_battle.rb"

character_params = [
  {name: "勇者", level: 75, hp: 238, offense: 238, defense: 238},
  {name: "アークデーモン", level: 60, hp: 210, offense: 195, defense: 150},
  {name: "ドラゴン", level: 70, hp: 230, offense: 200, defense: 200},
  {name: "シドー", level: 80, hp: 250, offense: 310, defense: 324}
]

FIRST_MONSTER_NUM = 101
LAST_MONSTER_NUM = (FIRST_MONSTER_NUM + character_params.size) - 2

brave = Brave.new(character_params[0])
monster = Monster.new(character_params[rand(FIRST_MONSTER_NUM..LAST_MONSTER_NUM) - 100])
 

case brave.level - monster.level
when (..-6)
  BRAVE_RAND_NUM_MAX = 30
  MONSTER_RAND_NUM_MAX = 15
when (-5..5)
  BRAVE_RAND_NUM_MAX = 20
  MONSTER_RAND_NUM_MAX = 20
when (5..15)
  BRAVE_RAND_NUM_MAX = 15
  MONSTER_RAND_NUM_MAX = 20
when (16..)
  BRAVE_RAND_NUM_MAX = 10
  MONSTER_RAND_NUM_MAX = 25
end

monster.appear

while brave.hp > 0 && monster.hp > 0
  brave.attack(monster)
  if monster.hp > 0
    monster.attack(brave)
  end
  show_status(brave, monster)
end

battle_result(brave, monster)