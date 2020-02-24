public class Monster{
 float posx;
 float posy = 0;
 float raio = 20;
 boolean visible = true;
 float vel=1;
 float life = 10 ;
 
 public Monster(float posx)
 {
       this.posx = posx;
 
 }
 
 public void show(){
        if(visible==true)
        {
          fill(0,255,0);
          circle(this.posx,this.posy,this.raio*2);
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
        this.vel += 1 ;
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
