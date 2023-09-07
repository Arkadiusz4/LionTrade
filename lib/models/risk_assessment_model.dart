class RiskAssessment {
  final int id;
  final String name;
  final String description;
  final List<Question> questions;
  final RiskProfile riskProfile;

  RiskAssessment({
    required this.id,
    required this.name,
    required this.description,
    required this.questions,
    required this.riskProfile,
  });
}

class Question {
  final int id;
  final String text;
  final List<Choice> choices;

  Question({
    required this.id,
    required this.text,
    required this.choices,
  });
}

class Choice {
  final int id;
  final String text;
  final int score;

  Choice({
    required this.id,
    required this.text,
    required this.score,
  });
}

enum RiskProfile {
  conservative,
  moderate,
  aggressive,
}
