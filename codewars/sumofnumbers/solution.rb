#!/usr/bin/env ruby

def get_sum(a,b)
  sum = 0
  if a == b
    sum = a
  elsif a > b
    (b..a).each do |i|
      sum += i
    end
  else
    (a..b).each do |i|
      sum += i
    end
  end
  return sum
end
