//Money Game! Created by Ethan Trott! Made better by Stephen Kaplan! //

int start, money;

boolean lemonade = true;
int lValue = 2;
int lWait = 2;
int lLeft, lTime;

boolean pizza = false;
int pValue = 20;
int pWait = 15;
int pLeft, pTime;
int pCost  = 25;

boolean cars = false;
int cValue = 99;
int cWait = 35;
int cLeft, cTime;
int cCost  = 80;

boolean trumpTheCompetition = false;

void setup(){
  size(830,500);
}

void draw(){
  background(61,89,171);
  
  if (start == 0){
    textSize(72);
    textAlign(CENTER);
    text("Click to Start",width/2,height/2);
    textAlign(NORMAL);
  }else{
    textSize(18);
    textAlign(RIGHT);
    fill(255);
    text("Donald Trump is $" + (450000000-money)+" richer than you." ,width,18);
    textSize(54);
    textAlign(CENTER);
    text("You have $" + money + "!",width/2, height/2);
    textAlign(NORMAL);
    
    lLeft = lWait - abs(second() - lTime);
    if (lLeft < 1){
      lLeft = 0;
    }
    if(pizza == true){
      pLeft = pWait - abs(second() - pTime);
      if (pLeft < 1){
        pLeft = 0;
      }
    }
    if(cars == true){
      cLeft = cWait - abs(second() - cTime);
      if (cLeft < 1){
        cLeft = 0;
      }
    }
    
    fill(255);
    textSize(53);
    text("Money Game!",10,50);
    noStroke();
    fill(51,79,161);
    rect(-2,height+2,width+2,-52);
    fill(21,49,131);
    if (lLeft > 0){
      rect(10-5,height+2,148+5,-52);
    }
    if (pLeft > 0){
      rect(157,height+2,160,-52);
    }
    if (cLeft > 0){
      rect(317,height+2,162,-52);
    }
    stroke(11,39,121);
    fill(200);
    textSize(14);
    if (lemonade == true){
      text("Lemonade Stand",10,height-34);
      text("Click to Earn $"+lValue+" (1)", 10, height - 20);
      text("Please wait " + lLeft + " seconds", 10, height - 6);
    }
    line(157,height,157,height-50);
    if (pizza == true){
      text("Pizza Shop",160,height-34);
      text("Click to Earn $"+pValue+" (1)", 160, height - 20);
      text("Please wait " + pLeft + " seconds", 160, height - 6);
    }else{
      text("Pizza Shop ($" + pCost +")", 160, height - 34);
      text("Click to buy (P)",160,height - 20);
      text("It earns $" + pValue + " per press", 160, height - 6);
    }
    line(317,height,317,height-50);
    if (cars == true){
      text("Car Shop",320,height-34);
      text("Click to Earn $"+cValue+" (1)", 320, height - 20);
      text("Please wait " + cLeft + " seconds", 320, height - 6);
    }else{
      text("Car Shop ($" + cCost +")", 320, height - 34);
      text("Click to buy (C)",320,height - 20);
      text("It earns $" + cValue + " per press", 320, height - 6);
    }
  }
  
  if (money > 450000000){
    trumping();
  }
}

void mouseClicked(){
 if (start != 0){
   if (mouseX > 5 && mouseX < 158){
      if (lemonade == true){
        if(abs(second() - lTime) >= lWait){
          money += lValue;
          lTime = second();
        }
      }
   }
   
   if (mouseX > 157 && mouseX < 317){
        if (pizza == false){
          if (money >= pCost){
            money -= pCost;
            pizza = true;
            pTime = 0;
          }
        }else{
          if(abs(second() - pTime) >= pWait){
            money += pValue;
            pTime = second();
          }
        }
   }
   
   if (mouseX > 317 && mouseX < 479){
    if (cars == false){
      if (money >= cCost){
        money -= cCost;
        cars = true;
        cTime = 0;
      }
    }else{
      if(abs(second() - cTime) >= cWait){
        money += cValue;
        cTime = second();
      }
    }
   }
 }
}

void keyPressed(){
  
  if (key == 's'){
    println(width + "," + height);
  }
  if (key == '1'){
    if (lemonade == true){
      if(abs(second() - lTime) >= lWait){
        money += lValue;
        lTime = second();
      }
    }
  }
  if (key == 'p'){
    if (pizza == false){
      if (money >= pCost){
        money -= pCost;
        pizza = true;
        pTime = 0;
      }
    }
  }
  if (key == '2'){
    if (pizza == true){
      if(abs(second() - pTime) >= pWait){
        money += pValue;
        pTime = second();
      }
    }
  }
  if (key == 'c'){
    if (cars == false){
      if (money >= cCost){
        money -= cCost;
        cars = true;
        cTime = 0;
      }
    }
  }
  if (key == '3'){
    if (cars == true){
      if(abs(second() - cTime) >= cWait){
        money += cValue;
        cTime = second();
      }
    }
  }
}

void mousePressed(){
  start = 1;
}

void trumping(){
  background(51);
  textSize(50);
  textAlign(CENTER);
  text("Congrutulations!",width/2,200);
  text("You're richer than Donny Trump!",width/2,300);
  textSize(11);
  text("Copyright E.T. Gaming",width/2,height-20);
  
  if (keyPressed || mousePressed){
    lemonade = true;
    pizza = false;
    cars = false;
    money = 0;
    trumpTheCompetition = false;
  }
}