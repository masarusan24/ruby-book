module Effects
  def self.reverse
    ->words do
      # スペースで分割＞リバース変換＞スペースで連結
      words.split(' ').map(&:reverse).join(' ')
    end
  end

  def self.echo(rate)
    ->words do
      # スペースならそのまま返す
      # それ以外は指定回数だけ繰り返す
      words.chars.map { |c| c == ' ' ? c : c * rate }.join
    end
  end

  def self.loud(level)
    ->words do
      # スペースで分割＞大文字変換と"!"の付与＞スペースで連結
      words.split(' ').map { |word| word.upcase + '!' * level }.join(' ')
    end
  end
end