class Names {
  int id;
  String fName;
  String lName;
  String gender;
  double handicapIndex;
  int playingIndex;

  Names({
    required this.id,
    required this.fName,
    required this.lName,
    required this.gender,
    required this.handicapIndex,
    required this.playingIndex,
  });
}

List<Names> sampleNames = [
  Names(
    id: 0,
    fName: 'Daniel',
    lName: 'Orijadribo',
    gender: 'm',
    handicapIndex: 10.5,
    playingIndex: 10,
  ),
  Names(
    id: 1,
    fName: 'Mervyn',
    lName: 'Lematia',
    gender: 'm',
    handicapIndex: 9.7,
    playingIndex: 9,
  ),
  Names(
    id: 2,
    fName: 'Simon',
    lName: 'Yaboy',
    gender: 'm',
    handicapIndex: 17.6,
    playingIndex: 23,
  ),
];
