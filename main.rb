require "./brave.rb"
require "./monster.rb"
require "./message_in_battle.rb"

brave_params = [
  {name: "勇者", level: 75, hp: 238, offense: 238, defense: 238},
  # {name: "勇者の息子", level: 99, hp: 999, offense: 999, defense: 999}
]

monster_params = [
  {name: "アークデーモン", level: 60, hp: 210, offense: 195, defense: 150},
  {name: "ドラゴン", level: 70, hp: 230, offense: 200, defense: 200},
  {name: "シドー", level: 80, hp: 250, offense: 310, defense: 324}
]

brave = Brave.new(brave_params[rand(0..brave_params.size - 1)])
monster = Monster.new(monster_params[rand(0..monster_params.size - 1)])

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

Message.appear(monster)

while brave.hp > 0 && monster.hp > 0
  brave.attack(monster)
  monster.attack(brave) if monster.hp > 0
  Message.show_status(brave, monster)
end

Message.battle_result(brave, monster)