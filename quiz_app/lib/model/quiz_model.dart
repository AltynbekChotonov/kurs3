// ignore_for_file: public_member_api_docs, sort_constructors_first
class Quiz {
  const Quiz(this.question, this.answer);

  final String question;
  final bool answer;
}

const q1 = Quiz('Кыргызстанда 7 область барбы?', true);
const q2 = Quiz('Кыргызстанда борбору Бишкекби?', true);
const q3 = Quiz('Эң кичине материк бул - Түндүк Америкабы?', false);
const q4 = Quiz('Ошко 3000 жыл болгонбу?', true);
const q5 = Quiz('Жер планетасы эң чоңбу?', false);
const q6 = Quiz('Flutter мобилдик тиркеме жасай алабы?', true);
const q7 = Quiz('бал бузулабы?', false);
const q8 = Quiz('Төөнүн куйругу жерге тийеби?', false);

const quizess = <Quiz>[q1, q2, q3, q4, q5, q6, q7, q8];
