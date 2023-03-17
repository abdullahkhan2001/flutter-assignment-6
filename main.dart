void main() {
  // question 1
  print(isPalindrome("racecar")); // true
  print(isPalindrome("hello")); // false
  
//   question 2
  print(sortString("hello")); // ehllo
  print(sortString("world")); // dlorw
  
//   question 3
  print(capitalizeWords("the quick brown fox")); // The Quick Brown Fox
  print(capitalizeWords("hello world")); // Hello World
  
//   question 4
  findSecondMinMax([1, 2, 3, 4, 5]); // Second lowest number: 2, Second greatest number: 4
  findSecondMinMax([10, 20, 30, 40, 50]); // Second lowest number: 20, Second greatest number: 40
  findSecondMinMax([1]); // Array too small
 
//   question 5
  print(countOccurrences("w3resource.com", "o")); // 2
  print(countOccurrences("hello world", "l")); // 3
  
//   question 6
   print(getLongestCountry(["Australia", "Germany", "United States of America"])); // "United States of America"
  print(getLongestCountry(["India", "China", "Russia", "Brazil"])); // "Russia"
}


// question 1
bool isPalindrome(String str) {
  int i = 0;
  int j = str.length - 1;
  while (i < j) {
    if (str[i] != str[j]) {
      return false;
    }
    i++;
    j--;
  }
  return true;
}


// question 2
String sortString(String str) {
  List<String> chars = str.split("");
  chars.sort();
  return chars.join("");
}

// question 3
String capitalizeWords(String str) {
  List<String> words = str.split(" ");
  for (int i = 0; i < words.length; i++) {
    String word = words[i];
    words[i] = "${word[0].toUpperCase()}${word.substring(1)}";
  }
  return words.join(" ");
}

// question 4
void findSecondMinMax(List<int> numbers) {
  if (numbers.length < 2) {
    print("Array too small");
    return;
  }

  numbers.sort();
  int secondLowest = numbers[1];
  int secondGreatest = numbers[numbers.length - 2];
  
  print("Second lowest number: $secondLowest");
  print("Second greatest number: $secondGreatest");
}

// question 5
  int countOccurrences(String str, String letter) {
  int count = 0;
  for (int i = 0; i < str.length; i++) {
    if (str[i] == letter) {
      count++;
    }
  }
  return count;
}

// question 6
  String getLongestCountry(List<String> countries) {
  String longestCountry = "";
  for (int i = 0; i < countries.length; i++) {
    if (countries[i].length > longestCountry.length) {
      longestCountry = countries[i];
    }
  }
  return longestCountry;
}