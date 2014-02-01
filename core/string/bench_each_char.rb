# encoding: utf-8

require 'benchmark'
require 'benchmark/ips'

Benchmark.ips do |x|
  string = "сtпh€аaс𤭢nиkбs¢о" * 10

  x.report "String#each_char mixed UTF-8 string" do |times|
    i = 0
    while i < times
      string.each_char { |char| }
      i += 1
    end
  end
end
