public class Monster{
 float posx;
 float posy = -50;
 float raio = 20;
 boolean visible = true;
 float vel=1;
 float life = 10 ;
  PImage player_layout = loadImage("./img/monster.png","png"); 
 public Monster(float posx)
 {
       this.posx = posx;
 
 }
 
 public void show(){
        if(visible==true)
        {
          
          image(this.player_layout,this.posx-this.raio,this.posy-this.raio,this.raio*2,this.raio*2);
          
        }
        else if(visible == false)
        {
          this.posy = 0;
          this.raio = 20;
          this.life = 10;
          visible = true;
        }
 }
 
 public void colide(Bullet balas,Score pontuacao){
     
   if( dist(balas.posx,balas.posy,this.posx,this.posy) < balas.raio+this.raio  ){
        
        fill(255,0,0);
        this.life--;
        this.raio++;
        
        
        if(this.life <=0 )
        {
        pontuacao.coins++;
        this.vel += 0.02 ;
        this.life += 2;
        visible = false;
        }
        
   }
   
   if(this.posy > height+this.raio)
   {
      visible = false; 
     
   }
 
 
 
 }
 
 public void update(){
  
   this.posy += this.vel; 
  
   
   
 }
 
  

  
  
  
  
  
  
  
  
}
