
def greeting(&block)
  puts 'おはよう'
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

# Proc オブジェクト を 作成 し、 それ を ブロック の 代わり として greeting メソッド に 渡す
repeat_proc = Proc.new { |text| text * 2 }
greeting(&repeat_proc)
