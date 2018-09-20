function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
}

// function isSubstring(phrase, sub) {
//   return phrase.include?(sub)
// }


// console.log(isSubstring("time to program", "time"));

function isPrime(n) {
  if (n < 2) {return false}
    for (let i = 2; i < n; i += 1) {
      if ( n % i == 0) {
        return false;
      }
    }
  return true;
}

// console.log(isPrime(3)); // true

function fizzBuzz(arr) {
  result = []
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] % 3 == 0 && arr[i] % 5 == 0) {
      continue
    } else if (arr[i] % 3 == 0 || arr[i] % 5 == 0) {
      result.push(arr[i])
    }
  }

  return result
}

console.log(fizzBuzz([3, 6, 10, 19])); // [3, 6, 10]

function sumOfNPrimes (n) {
  let sum = 0;
  let countPrimes = 0;
  let i = 2;

  while (countPrimes < n) {
    if (isPrime(i)) {
      sum += i;
      countPrimes += 1;
    }
    i += 1;
  }

  return sum;
}

// console.log(sumOfNPrimes(4)); // 17
