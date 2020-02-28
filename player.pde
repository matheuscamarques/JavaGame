public class Player{
 float posx;
 float posy;
 String png;
 PImage player_layout = loadImage("./img/estatico.png","png"); 
 float raio=38;
 
   public Player(float posx,float posy){
     this.posx = posx;
     this.posy= posy;
     
     
   }
  
  public void show(){
      
      //circle(this.posx+35,this.posy+35,this.raio*2);
      image(this.player_layout,this.posx,this.posy,this.raio*2,this.raio*2);
      
  }
  
  public void update(float posx , float posy){
   this.posy =  posy;
   this.posx =  posx;
    
    
  }
  
  
  
}
