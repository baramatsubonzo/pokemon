class Pokemon
  #
   attr_accessor :attack,:hp,:name

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

Pikachu = Pokemon.new("ピカチュウ",13,30)
Zenigame = Pokemon.new("ゼニガメ",6,50)

puts"
************************************
戦闘開始
************************************
"
n=0
loop do
  n += 1

sleep(1)
 if Pikachu.attack > Zenigame.attack
    Zenigame.hp = Zenigame.hp - Pikachu.attack
    puts "
    ---------------------------------------------------\n
    第#{n}戦目
    -------------------------------------------------\n
    "
    puts "#{Pikachu.name}の残りHP: #{Pikachu.hp}"
    puts "#{Zenigame.name}の残りのHP: #{Zenigame.hp}"

    elsif Pikachu.attack < Zenigame.attack
    Pikachu.hp = Pikachu.hp - Zenigame.attack

    puts "
    ---------------------------------------------------\n
    第#{n}戦目
    -------------------------------------------------\n
    "
    puts "#{Zenigame.name}の残りHP: #{Zenigame.hp}"
    puts "#{Pikachu.name}の残りのHP: #{Pikachu.hp}"
 end

 if Pikachu.hp < 0
  puts "
  **************************************
  決着 !!!
  **************************************
  #{Pikachu.name}の瀕死、、#{Zenigame.name}の勝利!!
  "
  break

  elsif Zenigame.hp < 0
  puts "
  **************************************
  決着 !!!
  **************************************
  #{Zenigame.name}の瀕死、、#{Pikachu.name}の勝利!!
  "
  break
 end
end
