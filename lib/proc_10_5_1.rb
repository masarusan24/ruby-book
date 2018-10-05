def judge(age)
  # 20より大きければtrueを返すProcオブジェクト
  adult = Proc.new { |n| n > 20 }

  # 20より大きければtrueを返すProcオブジェクト
  child = Proc.new { |n| n < 20 }

  case age
  when adult
    puts '大人です'
  when child
    puts '子供です'
  else
    puts 'ハタチです'
  end
end

judge(25)
judge(18)
judge(20)