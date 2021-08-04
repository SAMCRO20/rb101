def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end
