import 'package:flutter/material.dart';

class ChatDetail extends StatelessWidget {
  final String name;
  final String avatarUrl;

  const ChatDetail({super.key, required this.name, required this.avatarUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(avatarUrl),
            ),
            const SizedBox(width: 10),
            Text(name, style: const TextStyle(fontSize: 18)),
          ],
        ),
        actions: [
          IconButton(icon: const Icon(Icons.videocam), onPressed: () {}),
          IconButton(icon: const Icon(Icons.call), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      // Background khas chat WhatsApp
      backgroundColor: const Color(0xFFECE5DD),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // Chat dari lawan bicara
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text("Halo! Gimana progres tugas Flutter-nya?"),
                  ),
                ),
                // Chat dari kita
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFDCF8C6), // Warna hijau chat WA
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text("Aman, ini lagi dirakit UI-nya 🚀"),
                  ),
                ),
              ],
            ),
          ),
          // Kolom ketik pesan di bawah
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Type a message",
                        border: InputBorder.none,
                        icon: Icon(Icons.emoji_emotions_outlined, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                const CircleAvatar(
                  backgroundColor: Color(0xFF075E54),
                  child: Icon(Icons.mic, color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}