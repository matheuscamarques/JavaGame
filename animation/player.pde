public class Player{
 float posx;
 float posy;
 String png;
 PImage player_layout;
 
 
   public Player(float posx,float posy,PImage player_layout){
     this.posx = posx;
     this.posy= posy;
     this.player_layout = player_layout;
     
   }
  
  public void show(){
    
      image(this.player_layout,this.posx,this.posy);
    
  }
  
  
  
}
