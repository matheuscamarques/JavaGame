public class Score{
      
      public int coins = 0;
      public float posx;
      public float posy;
      
      public Score(float posx,float posy){/* Score is not NULL   */ 
          
        this.posx = posx;
        this.posy = posy;
  
      }
          
      public void show(){
        PImage png = loadImage("/img/coin.png","png");
        
        fill(255,255,0);
        textSize(32);
        text(" "+coins, 20, 30,50);   
       
        image(png,this.posx - 10 ,this.posy-6,50,50);
        
        
        
      }
  

}
