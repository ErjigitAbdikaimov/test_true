class Quiz {
  const Quiz(this.Question, this.answer);

  final String Question;
  final bool answer;
}

const q1 = Quiz('кыргызстанда 7 область барбы?', true);
const q2 = Quiz('франция чемпион болобу?', true);
const q3 = Quiz('евро даниянын акча бирдиги', false);
const q4 = Quiz('Морокко чемпион болобу', true);
const q5 = Quiz('кенгуру автсралиянын жаныбары', true);
const q6 = Quiz('шанхай Кытайдын борбору ', false);
const q7 = Quiz('нил эн узун дарыя', true);
const q8 = Quiz('Чынгыз Айтматов мугалимби', false);
const q9 = Quiz('флаттер менен операциондук система ', false);
//generik===> <> белгилуу бир тип беруу учун колдонулат
const quizess = <Quiz>[q1, q2, q3, q4, q5, q6, q7, q8, q9];
