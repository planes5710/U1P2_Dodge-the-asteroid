float asteroidX = 800;
float asteroidY = 100;

float asteroidX1 = 700;
float asteroidY1 = 0;

float asteroidX2 = 500;
float asteroidY2 = 0;

float earthX = 600;
float earthY = 600;

float xSpeed = -7;
float ySpeed = 8;

float xSpeed1 = -5;
float ySpeed1 = 8;

float xSpeed2 = -7;
float ySpeed2 = 6;

float Health = 100;

int screen = 0;

PImage earth;
PImage asteroid;

void setup()
{
  size(800, 800);
  earth = loadImage("Earth.png");
  asteroid = loadImage("Asteroid.png");

  earth.resize(75, 75);
  asteroid.resize(50, 50);

  imageMode(CENTER);
}

void draw()
{
if(screen == 0)
  {
    IntroPage();
  }
  if(screen == 1)
  {
    Game();
  }
 if (screen == 2)
 {
   GameOver();
 }
}
  void IntroPage()
  {
  background(0);
  textSize(30);
  text("Dodge the Asteroids",250,400);
  text("PRESS SPACE TO PLAY",250,600);
  
   if(keyPressed)
  {
    if(key == ' ')
    {
      screen = 1;
      
    }
  }
  }

  void Game()
  {
    background(0);
    
  fill(255,0,0);
  rect(100,100,100,50);
  
  fill(20,220,55);
  rect(100,100,Health,50);
  

  
  
  
  image(asteroid, asteroidX, asteroidY);
  asteroidX = asteroidX + xSpeed;
  asteroidY = asteroidY + ySpeed;

  image(asteroid, asteroidX1, asteroidY1);
  asteroidX1 = asteroidX1 + xSpeed1;
  asteroidY1 = asteroidY1 + ySpeed1;
  
  image(asteroid, asteroidX2, asteroidY2);
  asteroidX2 = asteroidX2 + xSpeed2;
  asteroidY2 = asteroidY2 + ySpeed2;


  image(earth, mouseX, earthY);



  float distance = dist(mouseX, earthY, asteroidX, asteroidY);
  float distance1 = dist(mouseX, earthY, asteroidX1, asteroidY1);
float distance2 = dist(mouseX, earthY, asteroidX2, asteroidY2);

  if (distance < 55)
  {
    
    asteroidX = 800;
    asteroidY = 100;
    Health = Health - 10;
  }

  if (distance1 < 55)
  {
    
    asteroidX1 = 700;
    asteroidY1 = 0;
    Health = Health - 10;
  }
  
   if (distance2 < 55)
  {
   
    asteroidX2 = 500;
    asteroidY2 = 0;
    Health = Health - 10;
  }
  
  if(Health <= 0)
  {
    Health = 0;
   GameOver();
  }

  if (asteroidX < 0 || asteroidY > height)
  {
    asteroidX = 800;
    asteroidY = 300;
    xSpeed = xSpeed - 1;
    ySpeed = ySpeed + 1;
  }

  if (asteroidX1 < 0 || asteroidY1 > height)
  {
    asteroidX1 = 500;
    asteroidY1 = 100;
    xSpeed1 = xSpeed1 - 1;
    ySpeed1 = ySpeed1 + 1;
  }
  
  if (asteroidX2 < 0 || asteroidY2 > height)
  {
    asteroidX2 = 800;
    asteroidY2 = 0;
    xSpeed2 = xSpeed2 - 1;
    ySpeed2 = ySpeed2 + 1;
  }
  }
  
  void GameOver()
  {
    background(0);
    textSize(50);
  text("Game Over",250,400);
  text("Press Space to Restart",170,600);
  
  if(keyPressed)
  {
    if(key == ' ')
    {
      screen = 1;
      Health = 100;
      xSpeed = -7;
      ySpeed = 8;
      xSpeed1 = -5;
      ySpeed1 = 8;
      xSpeed2 = -7;
      ySpeed2 = 6;
      
      asteroidX = 800;
      asteroidY = 100;
      asteroidX1 = 700;
      asteroidY1 = 0;
      asteroidX2 = 500;
      asteroidY2 = 0;
      
    }
  }
  }
  
  
  
