import 'package:flutter/material.dart';
import '../pages/chat_detail.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;
  final int unreadCount;

  const ChatTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.avatarUrl,
    this.unreadCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(avatarUrl),
      ),
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: Text(
        message,
        maxLines: 1,
        overflow: TextOverflow.ellipsis, // Bikin teks terpotong jadi "..." kalau kepanjangan
        style: const TextStyle(color: Colors.grey),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            time,
            style: TextStyle(
              fontSize: 12,
              color: unreadCount > 0 ? const Color(0xFF25D366) : Colors.grey,
            ),
          ),
          const SizedBox(height: 4),
          if (unreadCount > 0)
            Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                color: Color(0xFF25D366),
                shape: BoxShape.circle,
              ),
              child: Text(
                unreadCount.toString(),
                style: const TextStyle(
                  color: Colors.white, 
                  fontSize: 10, 
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatDetail(
              name: name,
              avatarUrl: avatarUrl,
            ),
          ),
        );
      },
    );
  }
}