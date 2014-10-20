def help
  puts 'Usage:'
  puts 'ruby twos.rb -d -12 5   # 10100'
  puts 'ruby twos.rb -b 1001    # -7'
end

def binary_to_decimal(binary_string)
  result = 0
  if binary_string.start_with? '1'
    result = -(2 ** binary_string.length)
  end
  result += binary_string.to_i 2
  result
end

def binary_range(bits)
  min = -(2 ** (bits - 1))
  max = (2 ** (bits - 1)) - 1
  (min..max)
end

argv = ARGF.argv
if (argv[0] == '-b') && (argv.size == 2)
  puts binary_to_decimal(argv[1])
elsif (argv[0] == '-r') && (argv.size == 2)
  range = binary_range(argv[1].to_i)
  puts "#{range.first} to #{range.last}"
else
  puts help
end
