class HopAcross
  def initialize(lst)
    @lst = lst
  end

  def hop_across
    place = 0
    ans = 0
    lst = @lst
    until place >= lst.size
      place += lst[place]
      ans += 1
    end
    place = -1
    until place < -lst.size
      place -= lst[place]
      ans +=1
    end
    return ans
  end
=begin
def initialize(place, ans)
  @place = place
  @ans = ans
end

def jump_l_to_r(lst)
  until place >= lst.size
    place += lst[place]
    ans += 1
  end
end

def jump_r_to_l(lst)
  until place < -lst.size
    place -= lst[place]
    ans +=1
  end
end
=end
end
