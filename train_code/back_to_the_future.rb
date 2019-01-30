=begin
題目:Marty拿到了一個時光機器回到了五十年前
     要回到未來必須要在那年裡面
     跟到達那天同個星期以及同號才可以
     EX:"monday 1 1" -> "monday 1 10"
想法:ruby裡面有個class'date'可以用來處理日期
修正:1.沒有指定年份的話會用今年
      這樣會影響星期(回傳的星期會跟題目不一樣)
      只好在槌船的地方做點手腳(只修改月份)
    2.看了解答這題似乎要用hash的概念來處理
=end
def back_to_the_future(str)
  require 'date'
  d = Date.parse(str)
  back_d = d + 7
  counter = 1
  until back_d.mday == d.mday && back_d.wday == d.wday
    back_d = d + 7 * counter
    counter += 1
  end
  if d.year == back_d.year
    return "I'm leaving here on " + "#{str.split.take(2).join(" ")} " + back_d.strftime('%B') +"!"
  else
    return "Doc, I can't get back to the future!"
  end
  #return back_d.strftime('%A %d %B %y')
end
back_to_the_future("Monday 3 January")
