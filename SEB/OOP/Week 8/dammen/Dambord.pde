class Dambord {
  Damsteen[] damstenen;

  public Dambord() {
    damstenen = new Damsteen[] {
      new Damsteen(100, 90, 50, 0), 
      new Damsteen(300, 170, 50, 0), 
      new Damsteen(130, 320, 50, 255), 
      new Damsteen(250, 270, 50, 255)
    };
  }
  
  void tekenDamstenen() {
    for (int i = 0; i < damstenen.length; i++) {
      damstenen[i].tekenDamsteen();
    }
  }
}
