# frozen_string_literal: true

list = File.open(ARGV.first)

solution = list.readlines
               .map(&:chomp)
               .chunk_while { _1 != '' }
               .map { _1.map(&:to_i).sum }
               .sort[-3..].sum

p solution
