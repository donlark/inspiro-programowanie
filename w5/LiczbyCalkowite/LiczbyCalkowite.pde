
void setup(){
   println("1   "+liczbyDoBitow(1));
   println("127 "+liczbyDoBitow(127));
   println("128 "+liczbyDoBitow(128));

   exit();
}

String liczbyDoBitow(int x){
  String s=Integer.toBinaryString(x);
  int d=32-s.length();
  for(int i=0; i <d; i++){
      s="0"+s;
  }
  return s;
}

int bityDoLiczby(String bits){
   if(bits.charAt(0)=='1'){
      int w=Integer.parseInt(bits.substring(1,bits.length()),2)-1;
      int m=Integer.parseInt("1111111111111111111111111111111",2);
      return -1*(w^m);
   }
   else{
      return Integer.parseInt(bits,2);
   } 
}
