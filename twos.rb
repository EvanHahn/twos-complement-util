def help
  puts 'Usage:'
  puts 'ruby twos.rb -d -12 5   # 10100'
  puts 'ruby twos.rb -b 1001    # -7'
end

def decimal_to_binary(decimal, bits)
  minimum_value = -(2 ** (bits - 1))
  maximum_value = 2 ** (bits - 1)
  puts "TODO"
end

def binary_to_decimal(binary_string)
  result = 0
  if binary_string.start_with? '1'
    result = -(2 ** binary_string.length)
  end
  result += binary_string.to_i 2
  result
end

argv = ARGF.argv
if (argv[0] == '-d') && (argv.size == 3)
  puts decimal_to_binary(argv[1].to_i, argv[2].to_i)
elsif (argv[0] == '-b') && (argv.size == 2)
  puts binary_to_decimal(argv[1])
else
  puts help
end
