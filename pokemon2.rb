class Pokemon #ポケモンの設計図
   attr_accessor :hp #HPの値を変更できるようにする
   def initialize (name, attack, hp)
    @name,@attack,@hp = name,attack,hp
   end
   def name
    @name
   end
   def attack
    @attack
   end
   def hp
    @hp
   end
end
Squirtle = Pokemon.new("ゼニガメ",4,4,10,200)
Pikachu = Pokemon.new("ピカチュウ",3,2,11,180)
puts "いけ#{Squirtle.name}"
puts  "いけ#{Pikachu.name}"
#バトルスタート
loop do
 #どちらがはやい？
 if Pikachu.speed > Squirtle.speed
  squirtle_damage = Pikachu.attack + rand(6) + 1 - Squirtle.defense + rand(2) + 1
  Squirtle.hp = Squirtle.hp - squirtle_damage
  puts "#{Pikachu.name}のこうげき！#{Squirtle.name}に#{squirtle_damage}のダメージ！残りのHP #{Squirtle.hp}"
elsif Pikachu.speed < Squirtle.speed
  pikachu_damage = Squirtle.attack + rand(6) + 1 - Pikachu.defense + rand(2) + 1
  Pikachu.hp = Pikachu.hp - pikachu_damage
  puts "#{Squirtle.name}のこうげき！#{Pikachu.name}に#{pikachu_damage}のダメージ！残りのHP #{Pikachu.hp}"
 end
if Pikachu.hp < 0
  puts "#{Pikachu.name}の負け。#{Squirtle.name}の勝ち"
  break
 elsif Squirtle.hp < 0
  puts "#{Squirtle.name}の負け。#{Pikachu.name}の勝ち"
  break
 end
if Pikachu.speed < Squirtle.speed
  squirtle_damage = Pikachu.attack + rand(6) + 1 - Squirtle.defense + rand(2) + 1
  Squirtle.hp = Squirtle.hp - squirtle_damage
  puts "#{Pikachu.name}のこうげき！#{Squirtle.name}に#{squirtle_damage}のダメージ！残りのHP #{Squirtle.hp}"
elsif Pikachu.speed > Squirtle.speed
  pikachu_damage = Squirtle.attack + rand(6) + 1 - Pikachu.defense + rand(2) + 1
  Pikachu.hp = Pikachu.hp - pikachu_damage
  puts "#{Squirtle.name}のこうげき！#{Pikachu.name}に#{pikachu_damage}のダメージ！残りのHP #{Pikachu.hp}"
 end
if Pikachu.hp < 0
  puts "#{Pikachu.name}の負け。#{Squirtle.name}の勝ち"
  break
 elsif Squirtle.hp < 0
  puts "#{Squirtle.name}の負け。#{Pikachu.name}の勝ち"
  break
 end
end
