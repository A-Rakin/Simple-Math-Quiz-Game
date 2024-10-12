import 'dart:io';

double promptDouble(String PromptText)
{
  print(PromptText);
  double myNum = double.parse(stdin.readLineSync()!);
  return myNum;
}
class MathQuestion 
{
  String question ='';
  double answer = 0;
  MathQuestion(String aQuestion, double aAnswer) 

  {
  this.question = aQuestion; // Initialize the 'question' field
  this.answer = aAnswer; // Initialize the 'answer' field
  }
}
void main()
{
  List<MathQuestion> questions = [
    MathQuestion('What is the Multiplication of 9*13?', 117.0),
    MathQuestion('What is the Division of 12/4?', 3.0),
    MathQuestion('What is the sum of 555 + 555 + 123?', 1233.0),
    MathQuestion('What is 15 times 12?', 180.0),
    MathQuestion('What is 5^3?', 125.0),
  ];

  int score = 0;

  for(MathQuestion mathQuestion in questions){
    double userAnswer = promptDouble(mathQuestion.question);

    if(userAnswer == mathQuestion.answer){
      score++;
      print('Correct!');
    }else{
      print('Incorrect!');
    }
  }
  print('You got ${score}/${questions.length}');
  print('Your Grade is ${score/questions.length *100}');
}
