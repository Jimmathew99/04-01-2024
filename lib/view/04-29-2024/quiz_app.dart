import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _questionIndex = 0;
  int _score = 0;
  List<Map<String, Object>> _questions = [
    {
      'question': 'What is the capital of France?',
      'options': ['Paris', 'Madrid', 'London', 'Rome'],
      'correctAnswer': 'Paris',
    },
    {
      'question': 'Which planet is known as the Red Planet?',
      'options': ['Mars', 'Venus', 'Jupiter', 'Saturn'],
      'correctAnswer': 'Mars',
    },
    {
      'question': 'Who painted the Mona Lisa?',
      'options': [
        'Leonardo da Vinci',
        'Pablo Picasso',
        'Vincent van Gogh',
        'Michelangelo'
      ],
      'correctAnswer': 'Leonardo da Vinci',
    },
    {
      'question': 'What is the tallest mountain in the world?',
      'options': ['Mount Everest', 'K2', 'Kangchenjunga', 'Makalu'],
      'correctAnswer': 'Mount Everest',
    },
    {
      'question': 'What is the largest ocean in the world?',
      'options': [
        'Pacific Ocean',
        'Atlantic Ocean',
        'Indian Ocean',
        'Arctic Ocean'
      ],
      'correctAnswer': 'Pacific Ocean',
    },
  ];
  String? _selectedOption;

  void _checkAnswer() {
    final correctAnswer = _questions[_questionIndex]['correctAnswer'] as String;
    setState(() {
      if (_selectedOption == correctAnswer) {
        _score++;
      }
      _questionIndex++;
      if (_questionIndex >= _questions.length) {
        _showScoreDialog();
      } else {
        _selectedOption = null;
      }
    });
  }

  void _resetQuiz() => setState(() {
        _questionIndex = 0;
        _score = 0;
        _selectedOption = null;
      });

  void _showScoreDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Quiz Complete'),
          content: Text('Your score: $_score out of ${_questions.length}'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                _resetQuiz();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Quiz App')),
        body: _questionIndex < _questions.length
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _questions[_questionIndex]['question'] as String,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 20),
                    ...(_questions[_questionIndex]['options'] as List<String>)
                        .map((option) => RadioListTile(
                              title: Text(option),
                              value: option,
                              groupValue: _selectedOption,
                              onChanged: (value) => setState(
                                  () => _selectedOption = value as String?),
                            ))
                        .toList(),
                    ElevatedButton(
                        child: Text('Submit'), onPressed: _checkAnswer),
                  ],
                ),
              )
            : Center(
                child: ElevatedButton(
                    child: Text('Start Again'), onPressed: _resetQuiz),
              ),
      );
}
