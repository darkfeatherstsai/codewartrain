class HopAcross
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
end
=begin
def hop_across(lst)
  place = 0
  ans = 0
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
=end
