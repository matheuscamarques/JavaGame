
boolean gameover=false;

int BUFFER = 1;
boolean condicao = true;
int count =0 ;


Player player;
Bullet[] bullets = new Bullet[1];
Score pontos = new Score();
Monster[] monstro = new Monster[6];
Stars[] estrelas = new Stars[1];


void setup() {
    
   background(0,00,0);
   size(366, 600);
   frameRate(60);
   player = new Player(width/2,width/2); 
   metralhadora(bullets);
   
   for(int i = 0 ; i<estrelas.length; i++){ estrelas[i] = new Stars();} 
   
   for(int i=0;i<6;i++){
     monstro[i] = new Monster(i*60+30);
   }
  

}


void draw() {
  background(0);
  noCursor();
  
  
  ControlBullets();
  ControlStars();
  pontos.show();
 
      for(int i=0;i<6;i++){
         monstro[i].show();
         monstro[i].update();
         for(int j=0; j< bullets.length ;j++ ){
          monstro[i].colide(bullets[j],pontos);
      
      } 
   }
   player.show();
  player.update(mouseX-37,mouseY-35);
  
  //GameOver
  
  if(GameOver() == true || gameover == true)
  {
    fill(255,0,0);
    textSize(60);
    text("GameOver",width/2-150,height/2);
    fill(255,255,255);
    textSize(15);
    text("Clique no mouse para dar restart.",width/2-125,height/2+20);
    for(int i = 0; i<monstro.length;i++){
         monstro[i].posy = -50;
    }
    gameover = true;
    
    if(mousePressed){
     pontos.coins = 0; 
     for(int i = 0; i<monstro.length;i++){
         monstro[i].vel = 1;
    }
     
     gameover = false;
    }
    
  }
 
    
  
  
                                                                









}

boolean GameOver(){
  
 for(int i=0 ; i<monstro.length;i++){
   if( dist(monstro[i].posx,monstro[i].posy,player.posx+35,player.posy+35) < monstro[i].raio+player.raio  ){
       return true;
    }
    
 } 
 
 return false;
  
}


 
      
          
