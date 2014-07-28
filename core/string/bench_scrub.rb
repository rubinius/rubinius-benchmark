require 'benchmark'
require 'benchmark/ips'

Benchmark.ips do |x|
  string = "\xFF" * 100_000

  x.report "scrub with default" do |times|
    i = 0
    while i < times
      string.scrub
      i += 1
    end
  end

  x.report "scrub with repl" do |times|
    i = 0
    while i < times
      string.scrub('XXX')
      i += 1
    end
  end

  x.report "scrub with block" do |times|
    i = 0
    while i < times
      string.scrub {|x| 'XXX'}
      i += 1
    end
  end
end
