import 'package:flutter/material.dart';

class YogaStretchingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yoga & Stretching'),
        backgroundColor: Colors.green, // Custom app bar color
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section: Introduction
            _buildHeader('🧘 Yoga & Stretching'),
            Text(
              'Enhance flexibility, relieve stress, and improve posture with these yoga and stretching exercises.',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 15),

            // Section: Guidelines
            _buildHeader('📌 Guidelines'),
            _buildGuideline('Always warm up before stretching to prevent injuries.'),
            _buildGuideline('Hold each pose for 20-30 seconds and breathe deeply.'),
            _buildGuideline('Maintain proper posture and avoid overstretching.'),
            _buildGuideline('Stretch both sides evenly for balanced flexibility.'),
            SizedBox(height: 20),

            // Section: Exercises
            _buildHeader('🔥 Yoga & Stretching Exercises'),
            _buildExerciseCard(
              'Downward Dog',
              'assets/images/downward_dog.jpg',
              'Hold for 30 seconds',
              'Great for stretching hamstrings, calves, and shoulders.',
            ),
            _buildExerciseCard(
              'Child’s Pose',
              'assets/images/childpose.jpg',
              'Hold for 30 seconds',
              'Relieves tension in the lower back and shoulders.',
            ),
            _buildExerciseCard(
              'Seated Forward Bend',
              'assets/images/seatedforward.jpeg',
              'Hold for 20-30 seconds',
              'Stretches the spine, shoulders, and hamstrings.',
            ),
            _buildExerciseCard(
              'Cat-Cow Stretch',
              'assets/images/catcow.jpg',
              'Perform 10 reps',
              'Improves spinal flexibility and reduces back pain.',
            ),
            _buildExerciseCard(
              'Butterfly Stretch',
              'assets/images/butterfly.jpg',
              'Hold for 30 seconds',
              'Targets inner thighs and improves hip mobility.',
            ),

            SizedBox(height: 20),

            // Section: Breathing Techniques
            _buildHeader('💨 Breathing Techniques'),
            _buildGuideline('Breathe in through your nose, filling your lungs completely.'),
            _buildGuideline('Hold your breath for a few seconds for better oxygen circulation.'),
            _buildGuideline('Exhale slowly through your mouth, focusing on relaxation.'),
            SizedBox(height: 20),

            // Section: Additional Features
            _buildHeader('🚀 Additional Features'),
            _buildFeatureRow(Icons.alarm, 'Set Reminders', 'Schedule stretching sessions.'),
            _buildFeatureRow(Icons.music_note, 'Relaxing Sounds', 'Play meditation music.'),
            _buildFeatureRow(Icons.accessibility_new, 'Posture Tracker', 'Check alignment in poses.'),
          ],
        ),
      ),
    );
  }

  // Function to create section headers
  Widget _buildHeader(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green[700]),
      ),
    );
  }

  // Function to create exercise cards
  Widget _buildExerciseCard(String title, String imagePath, String reps, String description) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        leading: Image.asset(imagePath, width: 60, height: 60, fit: BoxFit.cover),
        title: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(reps, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent)),
            SizedBox(height: 4),
            Text(description, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }

  // Function to create guidelines
  Widget _buildGuideline(String text) {
    return Row(
      children: [
        Icon(Icons.check_circle, color: Colors.green, size: 18),
        SizedBox(width: 8),
        Expanded(child: Text(text, style: TextStyle(fontSize: 14))),
      ],
    );
  }

  // Function to create additional feature rows
  Widget _buildFeatureRow(IconData icon, String title, String description) {
    return ListTile(
      leading: Icon(icon, color: Colors.orangeAccent),
      title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
      subtitle: Text(description, style: TextStyle(fontSize: 14)),
    );
  }
}
