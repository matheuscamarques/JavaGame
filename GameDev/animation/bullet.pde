public class Bullet{
    
    public float posx;
    public float posy;
    public int   raio;
    
  
    public Bullet(float posx, float posy, int tam){
            this.posx = posx ;
            this.posy = posy ;
            this.raio = tam;
    }
    
    public void show(){  
      
           circle(this.posx,this.posy,this.raio*2);
           
           
    }
    
    
    
    
    
}
