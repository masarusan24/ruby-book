class Ticket
  attr_reader :fare, :stamped_at  # :nodoc:

  # 切符を表すクラス
  def initialize(fare)
    @fare = fare
  end

  # 改札機を通った駅名を記録する
  # ==== 引数
  # * +name+ - 駅名
  def stamp(name)
    @stamped_at = name
  end
end