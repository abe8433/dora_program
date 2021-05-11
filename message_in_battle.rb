def show_status(brave, monster)
  puts <<~TEXT

  *=*=*=*=*=*=*=*=*=*=*=*=*=*
  【#{brave.name}】HP: #{brave.hp}
  【#{monster.name}】HP: #{monster.hp}
  *=*=*=*=*=*=*=*=*=*=*=*=*=*
  
  TEXT
end
  
def battle_result(brave, monster)
  if monster.hp == 0
    puts "#{monster.name}をやっつけた！"
  else
    puts "#{brave.name}はしんでしまった！"
  end
end