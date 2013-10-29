#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# for Ruby 2.x

str = ["お", "ち", "ん", "ぽ"]
complete = 0
cnt = 0
rnd = 0

while complete < 4 do
  cnt += 1
  rnd = rand(4)
  print(str[rnd].chomp)
  complete = (rnd == complete) ? complete+1 : 0
end

print("\n", cnt, "回目で完成しました\n")
