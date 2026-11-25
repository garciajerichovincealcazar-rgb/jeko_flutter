import 'package:material_ui/material_ui.dart';
import 'package:flutter_application_1/widgets/feed_action_button.dart';
import 'package:flutter_application_1/widgets/post_image.dart';
import 'package:flutter_application_1/widgets/profile_avatar.dart';

class NewsfeedCard extends StatefulWidget {
  const NewsfeedCard({
    super.key,
    this.imageUrl = 'https://i.pinimg.com/736x/95/60/e4/9560e49fdcc8097029c215d311d6bd77.jpg',
  });

  final String? imageUrl;

  @override
  State<NewsfeedCard> createState() => _NewsfeedCardState();
}

class _NewsfeedCardState extends State<NewsfeedCard> {
  static const _profileImageUrl =
      'https://i.pinimg.com/736x/5d/a0/9d/5da09dfb5acd5772c5eb341b4fc6857e.jpg';
  var _isLiked = false;
  var _likes = 177;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 14, 8, 10),
            child: Row(
              children: [
                const ProfileAvatar(imageUrl: _profileImageUrl),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'JEKOPOGI',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 3),
                      Text(
                        'October 11 · 🌐',
                        style: TextStyle(color: Colors.black54, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  tooltip: 'More options',
                  icon: const Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(14, 0, 14, 8),
            child: Text(
              "I don't know what the enemy is planning, but apparently, "
              "I'm the one who's supposed to protect everyone. One minute "
              "I'm just standing here, and the next thing I know, I'm "
              "leading the entire team into battle. Nobody knows the plan, "
              "everyone is running in different directions, and somehow "
              "I'm expected to save the day. But don't worry, I've got my "
              "shield, my hammer, and absolutely no idea what's going on. "
              "Whatever happens next, Tigreal will stand his ground. "
              "FOR THE TEAM!",
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(14, 0, 14, 12),
            child: Text('#hashtag', style: TextStyle(color: Color(0xFF1877F2))),
          ),
          if (widget.imageUrl != null && widget.imageUrl!.trim().isNotEmpty)
            PostImage(imageUrl: widget.imageUrl!),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Row(
              children: [
                Icon(
                  Icons.thumb_up,
                  size: 17,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 6),
                Text('$_likes', style: const TextStyle(color: Colors.black54)),
                const Spacer(),
                const Text(
                  '42 Comments  ·  5 Shares',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          const Divider(height: 1, indent: 12, endIndent: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: FeedActionButton(
                    icon: _isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
                    label: 'Like',
                    color: _isLiked
                        ? Theme.of(context).colorScheme.primary
                        : Colors.black54,
                    onPressed: () {
                      setState(() {
                        _isLiked = !_isLiked;
                        _likes += _isLiked ? 1 : -1;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: FeedActionButton(
                    icon: Icons.mode_comment_outlined,
                    label: 'Comment',
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: FeedActionButton(
                    icon: Icons.share_outlined,
                    label: 'Share',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1, indent: 12, endIndent: 12),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                const ProfileAvatar(imageUrl: _profileImageUrl, radius: 17),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write a comment...',
                      isDense: true,
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 10,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
