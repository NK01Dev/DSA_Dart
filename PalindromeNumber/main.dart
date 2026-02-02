//Given an integer x, return true if x is a palindrome, and false otherwise.

void main(List<String> args) {
  print('Hello, World!');
  print(isPalindromeMath(121));
  print(isPalindromeMath(-121));
  print(isPalindromeMath(10));
  int nmbr=12321;
  nmbr.truncate();

  // print(isPalindrome(-101));
}
//Solution base of string manipulation
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
//Solution base of mathematical approach
bool isPalindromeMath(int x) {
  if (x < 0) {
    return false;
  }
  int div=1;
  while (x>=10*div) {
    div*=10;
  }
  while (x!=0) {
    int left=x~/div;
    int right=x%10;
    if (left!=right) {
      return false;
    } else {
      x=(x%div)~/10;
      div=div~/100;
      
    }

    
  }
  return true;
}