def help
  puts 'Usage:'
  puts 'ruby twos.rb -d -12  # 10100'
  puts 'ruby twos.rb -b 1001 # -7'
end

def decimal_to_binary(decimal_string)

end

def binary_to_decimal(binary_string)
  result = 0
  if binary_string.start_with? '1'
    result = -2 ** binary_string.length
  end
  result += binary_string.to_i 2
  result
end

argv = ARGF.argv
if (argv.size != 2) || (!['-d', '-b'].include? argv[0])
  puts help
  exit
end

if argv[0] == '-d'
  puts decimal_to_binary(argv[1])
else
  puts binary_to_decimal(argv[1])
end
