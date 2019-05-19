boolean isGeprint = false;

void setup(){}

void draw(){
  if(!isGeprint) {
    drukaf(7.56);
    println();
    drukaf(-7.56);
    println();
    
    drukaf(7.489);
    println();
    drukaf(-7.489);
    println();
    
    drukaf(-3.01);
    println();
    drukaf(-3.01);
    println();
    
    drukaf(4.999);
    println();
    drukaf(-4.999);
    println();
    
    isGeprint = true;
  }
}

void drukaf(float getal){
  println("getal\t:\t" + getal);
  println("int()\t:\t" + int(getal));
  println("round()\t:\t" + round(getal));
  println("floor()\t:\t" + floor(getal));
  println("ceil()\t:\t" + ceil(getal));
}

// de uitkomsten zijn zoals verwacht. enkel bij floor() en ceil() wordt gerekend vanaf 0.
// dus omgekeerd voor negatieve getallen t.o.v. positieve getallen.
