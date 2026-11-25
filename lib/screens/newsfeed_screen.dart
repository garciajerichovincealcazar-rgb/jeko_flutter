import 'package:material_ui/material_ui.dart';
import 'package:flutter_application_1/widgets/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F2F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'facebook',
          style: TextStyle(
            color: Color(0xFF1877F2),
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            tooltip: 'Search',
            icon: const Icon(Icons.search, color: Colors.black87),
          ),
          IconButton(
            onPressed: () {},
            tooltip: 'Messages',
            icon: const Icon(Icons.chat_bubble, color: Colors.black87),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const [NewsfeedCard()],
      ),
    );
  }
}
