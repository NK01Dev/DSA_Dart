void main(List<String> args) {
  //["flower","flow","flight"]
  print(longestCommonPrefix(["flower","flow","flight"]));
  print(longestCommonPrefix(["dog","racecar","car"]));
}
 String longestCommonPrefix(List<String> strs) {
 String res="" ;
 print('Input List: ${strs[0]}');
 for(int i=0;i<strs[0].length;i++){
  print('Current character: ${strs}');
   for(int j=1;j<strs.length;j++){
     if(i>=strs[j].length || strs[j][i]!=strs[0][i]){
       return res;
     }
   }
   res+=strs[0][i];
 }
 return res;
}
