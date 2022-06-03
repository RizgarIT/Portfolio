class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demo_recommendations = [
  Recommendation(
    name: "ABOUT ME",
    source: "SUH college of science",
    text:
    "I love learning and gathering experience about coding especially building and developing mobile, desktop applications. I want tobe a mobile developer in the future",
  ),

  Recommendation(
    name: "EXPERIENCE",
    source: "reception employee",
    text:
       "Receptionist since 2016 and now still working in this position at\nErbil International Hospital",
  ),
  Recommendation(
    name: "SKILLS",
    source: "Frameworks/Systems",
    text:
    "Flutter , Windows Forms Application , SQL Server Management Studio ,\nWordpress , GitHub",
  ),
  Recommendation(
    name: "EDUCATION",
    source: "Bachelor Degree in IT",
    text:
    " 2018 - 2022 \n\nCollege of Science Salahaddin University",
  ),

];
