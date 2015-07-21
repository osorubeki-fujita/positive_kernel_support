require "positive_kernel_support/version"
require "positive_basic_support"

module PositiveKernelSupport

  # @!group コマンドツールへの情報の表示

# 空行を表示する．
# @param [Integer (natural)] n 表示する空行の数
# @raise [IndexError] n が自然数でない場合に発生するエラー
# @return [nil]
  def put_empty_row(n=1)
    raise unless n.natural_number?
    n.times do
      puts( "" )
    end
    return nil
  end

# str を表示した後，空行を1行追加する．
# @param [String, Numeric, etc.] str 表示する内容
# @return [nil]
  def put_message( str )
    puts( str )
    put_empty_row
    return nil
  end

# 区切り線（区切りの記号は = ）を表示する
# @param [Integer (natural)] n 表示する区切り記号の数
# @return [nil]
# @raise [IndexError] n が自然数でない場合に発生するエラー
  def put_separation_line( n = 128 , char: "=")
    raise "Error: The variable should be an integer."unless n.natural_number?
    raise unless char.string?
    put_message( char * n )
    return nil
  end

  # @!endgroup

end

include PositiveKernelSupport
