//Given an integer x, return true if x is a palindrome, and false otherwise.

void main(List<String> args) {
  print('Hello, World!');
  // print(isPalindrome(121));
  print(isPalindrome(-121));
  // print(isPalindrome(10));
  // print(isPalindrome(-101));
}
bool  isPalindrome(int nmbr) {
  String str=nmbr.toString();
  print(str);
  print('-------------------');
  final split= str.split('');
  print('spilt List: $split');
  print('-------------------');
  final reversed= split.reversed;
  print('reversed Iterable: $reversed');
  print('-------------------');
  final joined= reversed.join('');
  print('joined String: $joined');
  print('-------------------');

  if(str==joined){
    return true;
  }

  return false;
}