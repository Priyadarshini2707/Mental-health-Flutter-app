import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class QuestionnaireApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuestionScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pinkAccent,
        ),
      ),
    );
  }
}

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int _currentQuestionIndex = 0;
  List<Question> _questions = [
    Question(
      text: 'How often do you feel stressed?',
      choices: ['Never', 'Rarely', 'Sometimes', 'Often', 'Always'],
    ),
    Question(
      text: 'Do you have trouble sleeping?',
      choices: ['Not at all', 'A little', 'Moderately', 'A lot', 'Extremely'],
    ),
    // Add more questions here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // AppBar with pink accent background color
        title: Text('Questionnaire'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'Question ${_currentQuestionIndex + 1}:',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Text(
            _questions[_currentQuestionIndex].text,
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 20.0),
          Column(
            children: _buildChoices(),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _nextQuestion,
            style: ElevatedButton.styleFrom(
              primary: Colors.pinkAccent, // Set button color to pink accent
            ),
            child: Text('Next'),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildChoices() {
    return _questions[_currentQuestionIndex].choices.map((choice) {
      return RadioListTile(
        title: Text(choice),
        value: choice,
        groupValue: _questions[_currentQuestionIndex].selectedChoice,
        onChanged: (value) {
          setState(() {
            _questions[_currentQuestionIndex].selectedChoice = value.toString();
          });
        },
      );
    }).toList();
  }

  void _nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      // Handle when all questions are answered (e.g., show results)
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ResultScreen(questions: _questions)),
      );
    }
  }
}

class Question {
  final String text;
  final List<String> choices;
  String? selectedChoice;

  Question({required this.text, required this.choices});
}

class ResultScreen extends StatelessWidget {
  final List<Question> questions;

  ResultScreen({required this.questions});

  @override
  Widget build(BuildContext context) {
    // Calculate and display results based on user choices
    // You can implement your prediction logic here

    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Center(
        child: Text(
          'Display Results Here', // Replace with your results
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
