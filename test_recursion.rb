#!/usr/bin/env ruby

require 'benchmark'

RubyVM::InstructionSequence.compile_option = {
  :tailcall_optimization => true, 
  :trace_instruction => false
}

def countdown n
  return 0 + countdown(n-1)
end

def tail_countdown n
  return if n.zero?
  tail_countdown n-1
end 

Benchmark.bm 10 do |x|
  5.times do |i|
    x.report("tail_countdown") { tail_countdown 5}
    x.report("countdown") { countdown 1}
  end
end

