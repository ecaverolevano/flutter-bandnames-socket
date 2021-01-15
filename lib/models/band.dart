

class Band{

  String id;
  String name;
  int votes;

  Band({
    this.id,
    this.name,
    this.votes
  });

  //Factory constructor, regresa una nueva instancia de la clase 
  factory Band.fromMap( Map<String, dynamic> obj) => Band(

      id: obj['id'],
      name: obj['name'],
      votes: obj['votes']

  );

}