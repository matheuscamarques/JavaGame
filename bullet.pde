public class Bullet{
    
    public float posx;
    public float posy;
    public int   raio;
    public float vely = 5.4;
    
  
    public Bullet(float posx, float posy, int tam){
            this.posx = posx ;
            this.posy = posy ;
            this.raio = tam;
    }
    
    public void show(){  
           fill(0,255,0);
           circle(this.posx,this.posy,this.raio*2);
           
           
    }
    
     public void update(float posx,float posy){  
           this.posx = posx;
           this.posy = posy;
           
           
    }
    
     public void move(){  
           
           this.posy = this.posy-this.vely;
           
           
    }
    
    
    public boolean limiter(){  
           
           if(this.posy < 40){
               return true;
           }
           else
           return false;
           
    }
    
    
    
    
    
}



public void ControlBullets(){
   
   Bullet bala = new Bullet(mouseX,mouseY,5); 
  
  //GERA OS BALAS EM UM PERIODO DE TEMPO
  if(condicao == true && (count%5 == 0) ){
    bullets = push(bullets,bala);
    condicao = false;   
  }
  else{
    condicao = true;
    count++;
  }
     
  for(int i = 0 ; i< bullets.length; i++){ 
      //Desenha Bullet na tela;
      bullets[i].show(); 
      //Movimento Bullet no espaço
      bullets[i].move();      
      //Se o elemento Bullet atinge o limite da tela ele é removido da memória;
      if(bullets[i].limiter() == true){ bullets = removeTheElement(bullets, i);}
    }
  
  
}


 //METRALAHORA 
 
public void metralhadora(Bullet []bullets){
  
   for(int i = 0 ; i<bullets.length; i++){ bullets[i] = new Bullet(50,50,5);} 
 
}
