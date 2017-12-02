class Card  {
  String name;
  int id;
  
  Card(String n, int i) {
    name = n;
    id = i;
  }
  
  int getID() {
    return id;
  }

  String getName() {
    return name;
  }
}