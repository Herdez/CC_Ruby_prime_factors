
# Deberás crear un método que reciba un integer y devuelva un array con 
# la combinación de números primos que lo componen. Aplica el paradigma 
# Divide y Vencerás y escribe pseudocódigo antes de empezar con el código.

def prime(num)
  #Evaluate 'num' to begin with '1' and '2' 
  if num < 3 && num != 0
    return flag_prime = true if num == 1 || num == 2
  end
  #Flag variable is initialized in false
	flag_prime = false
  #Evaluate all array since 2
  for i in 2..num-1
    #Determine if num is a prime
    if num%i != 0
      flag_prime = true
    else
      flag_prime = false
      break
    end
  end
  #Result, 'true' if 'num' is prime.
  flag_prime
end


def prime_factors(num)
  #'array_primes' is initialized.
	array_primes = []
  #variable 'factor' is initialized in '1'
	factor = 1
  #Evaluate if 'num' is a prime number and push it into 'array_primes'
  for i in 2..num-1
    array_primes << i if prime(i) == true && num%i == 0
  end
  #Multiply all elements from 'array_primes' to get 'factor' variable.
  array_primes.each { |value|
    factor = factor * value
  }
  #Get primes factors!
  if factor == num
    array_primes
  else
    new_factor = array_primes[0]
    array_primes << new_factor
    array_primes.sort
  end
end

#Driver code:
p prime_factors(4) == [2, 2]
p prime_factors(9) == [3, 3]
p prime_factors(12) == [2, 2, 3]
p prime_factors(34) == [2, 17]



