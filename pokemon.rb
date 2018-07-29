class Pokemon
  attr_accessor :name
  attr_accessor :hp
  def initialize(pokename, pokehp)
    @name = pokename
    @hp = pokehp
  end

  def attack
    print"
    ************************************
    戦闘開始
    *************************************
    "
    n=1
    loop{
     sleep(1)
     print"
     ---------------------------------------------------\n
     第", n,"戦目
     -------------------------------------------------\n
     "
     print "#{@name}の残りHP:", @hp, "\n"
     print "ピカチュウの残りHP:", 30, "\n"
    n += 1
    @hp -= 13
    if @hp < -5 then
      break
    end
    }

    sleep(2)
    print"
    **************************************\n
    決着 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n
    ゼニガメ瀕死、ピカチュウの勝利\n
    **************************************\n
    "
  end
end
zeni = Pokemon.new("ゼニガメ", 50, )

zeni.attack
