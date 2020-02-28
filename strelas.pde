public class Stars{
 float posx = random(width); 
 float posy = 0 ;
  
  public void show(){
        fill(255,255,255);
        rect(this.posx,this.posy,2,20);
  }
  public void update(){
      this.posy += random(1,60);
  }
  
   public boolean limiter(){  
           
           if(this.posy > height){
               return true;
           }
           else
           return false;
           
    }
  
}


public void ControlStars(){
   boolean condicao = true;
   Stars bala = new Stars(); 
  
  //GERA OS BALAS EM UM PERIODO DE TEMPO
  if(condicao == true && (count%5 == 0) ){
    estrelas = push(estrelas,bala);
    condicao = false;   
  }
  else{
    condicao = true;
    count++;
  }
     
  for(int i = 0 ; i< estrelas.length; i++){ 
      //Desenha Bullet na tela;
      estrelas[i].show(); 
      //Movimento Bullet no espaço
      estrelas[i].update();      
      //Se o elemento Bullet atinge o limite da tela ele é removido da memória;
      if(estrelas[i].limiter() == true){ estrelas = removeTheElement(estrelas, i);}
    }
  
  
}
