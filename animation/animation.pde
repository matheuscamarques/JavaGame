

int i=0,j=0,k=0;
int count = 0;
PImage destruir[] = new PImage[13];

PImage estatico ; 

PImage dinamico;

float posx=512;
float posy=360;

float velY=0;
int tester = 0;

float municaoX;
float municaoY;
float pointx;
float pointy;
int  velx = 5;


Score pontuacao;
Bullet balas;
Monster []inimigo;

void setup() {
    
   background(0,00,0);
   size(375,667);
   frameRate(60);
   estatico = loadImage("/img/estatico.png","png"); 
   dinamico = estatico;
   
   pontuacao = new Score(0,0);  
   balas = new Bullet(0,0,10);
   
   inimigo = new Monster[7];
   
  
   for(i=0;i<6;i++){
      inimigo[i] = new Monster(i*60+30);
     
   }
  
}




void draw() {
  background(0);
  noCursor();
  
  for(i=0;i<6;i++){
     inimigo[i].colide(balas,pontuacao);
     inimigo[i].show(); 
     inimigo[i].update();
    
  }

  
  pontuacao.show();

 municaoX = mouseX+36;
 municaoY = mouseY-velY;            
    
   if(!limiter()){
           posy = mouseY;
           posx = mouseX;     
   }
    
                if(tester == 1){
                  
                  
                  balas.posx = pointx;
                  balas.posy = pointy - velY;                
                  balas.show();
                  velY += 10;
                  
                }
                
                
                
                if( (pointy-velY) < 0){
                   
                  pointx = municaoX;
                  pointy = municaoY;
                  tester = 0;
                  velY =0;
                }
                
                noStroke();
                fill(255,0,255);
                //circle(posx+37,posy, 10);
                image(dinamico, posx, posy);
                limiter();
                
                
                     tester = 1;
                     pointx= municaoX;
                     pointy= municaoY;   
                                                                
}



boolean limiter(){
   if(mouseX<0)
   {
       
       posx = 0;
       return true;
   }
   
   if(mouseX>width-75)
   {
       
       posx = width-75;
       return true;
   }
   
   if(mouseY>500)
   {
       
       posy=500;
       posx = mouseX;
       return true;
   }
       return false;
}


              

         
                    
       
               
 
 
      
          
