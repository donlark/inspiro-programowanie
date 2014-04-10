
void setup(){
   float a=1.0;
   float b=1.1;
   float r=b-a;
   println("b-a= "+r);
   boolean p=(r==0.1);
   println("b-a == 0.1 "+p);
   
   println("b-a "+liczbaDoBity(r));
   println("0.1 "+liczbaDoBity(0.1));
   reprezentacja(0.1);
   
   
   exit();
}

String liczbaDoBity(float x){
  String text=Integer.toBinaryString(Float.floatToIntBits(x));
  int d = 32-text.length();
  for(int i=1; i <= d; i++){
     text="0"+text; 
  }
  return text;
}

void reprezentacja(float x){
   String bits=liczbaDoBity(x);
   String z=""+bits.charAt(0);
   String e=bits.substring(1,9);
   String m=bits.substring(9,32);
   
   int zz=Integer.parseInt(z,2);
   int ee=Integer.parseInt(e,2);
   
   int zzz=(zz==1?-1:+1);
   float eee=pow(2.0,ee-127);
   float mm=1.0;
   float p2=1.0/2.0;
   for(int i=0; i < m.length();i++){
      mm+=(m.charAt(i)=='1'?1:0)* p2;
      p2=p2/2.0;
   }
   
   println("Znak       "+z+"\t\t\t"+zzz);
   println("Mantysa    "+m+"\t"+mm);
   println("Eksponenta "+e+"\t\t\t"+eee);
   println("Sprawdzenie "+(zzz*eee*mm));   

}



float reprezentacjaDoLiczby(String z, String e, String m){
    return Float.intBitsToFloat(Integer.parseInt(z+e+m,2));
}

