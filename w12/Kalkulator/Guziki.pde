class Guziki{
   Guzik[] guziki; 
   int indeks=0;
   int nacisniety=-1;
   
   Guziki(int size){
     guziki=new Guzik[size];  
   }
   
   void dodaj(Guzik button){
      guziki[indeks]=button; 
      indeks+=1;
   }
   
   void rysuj(){
      for(int i=0; i < guziki.length; i+=1){
         guziki[i].rysuj(i==nacisniety);
      } 
   }
   
   void nacisnij(int mx, int my){
     nacisniety=-1;
     println("nacisnieto kursor w pozycji: "+mx+","+my);
     for(int i=0; i < guziki.length; i+=1){
         if(guziki[i].nacisniety(mx,my)){
             nacisniety=i;
         }
      } 
      println("Nacisnieto guzik: "+nacisniety);
   }
   
   boolean nacisniety(){
     return nacisniety!=-1;
   }
   
   int numerGuzika(){
      return nacisniety; 
   }
}
