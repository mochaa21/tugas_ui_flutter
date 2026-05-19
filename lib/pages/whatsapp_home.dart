import 'package:flutter/material.dart';
import '../widgets/chat_tile.dart';

class WhatsappHome extends StatelessWidget {
  const WhatsappHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Data dummy untuk memunculkan daftar chat
    final List<Map<String, dynamic>> chatData = [
      {
        "name": "Dosen Pemrograman",
        "message": "Tugas UI/UX jangan lupa dikumpulkan minggu depan ya.",
        "time": "14:30",
        "avatar": "https://i.pravatar.cc/150?img=11",
        "unread": 2,
      },
      {
        "name": "Budi Santoso",
        "message": "Bro, udah kelar tugas Flutter?",
        "time": "12:15",
        "avatar": "https://i.pravatar.cc/150?img=12",
        "unread": 1,
      },
      {
        "name": "Grup Praktikum",
        "message": "Sari: Link notionnya error nih.",
        "time": "Kemarin",
        "avatar": "https://i.pravatar.cc/150?img=13",
        "unread": 0,
      },
      {
        "name": "Siti Maimunah",
        "message": "Oke, siap!",
        "time": "Kemarin",
        "avatar": "https://i.pravatar.cc/150?img=9",
        "unread": 0,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(icon: const Icon(Icons.camera_alt_outlined), onPressed: () {}),
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context, index) {
          final chat = chatData[index];
          return ChatTile(
            name: chat['name'],
            message: chat['message'],
            time: chat['time'],
            avatarUrl: chat['avatar'],
            unreadCount: chat['unread'],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF25D366),
        child: const Icon(Icons.message, color: Colors.white),
      ),
    );
  }
}