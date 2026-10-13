import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class PostCard extends StatefulWidget {
  final String userName;
  final String location;
  final String avatarText;
  final Color avatarColor;
  final String image;
  final String description;
  final int likes;
  final int comments;

  const PostCard({
    super.key,
    required this.userName,
    required this.location,
    required this.avatarText,
    required this.avatarColor,
    required this.image,
    required this.description,
    required this.likes,
    required this.comments,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool _liked = false;
  int _likes = 0;

  @override
  void initState() {
    super.initState();
    _likes = widget.likes;
  }

  void _toggleLike() {
    setState(() {
      if (_liked) {
        _liked = false;
        _likes = _likes - 1;
      } else {
        _liked = true;
        _likes = _likes + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: widget.avatarColor,
                  child: Text(
                    widget.avatarText,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.userName,
                        style: const TextStyle(
                          color: AppColors.textDark,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.location,
                        style: const TextStyle(color: AppColors.textMuted, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_horiz, color: AppColors.textMuted),
              ],
            ),
          ),
          Image.asset(
            widget.image,
            height: 230,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: [
                IconButton(
                  onPressed: _toggleLike,
                  icon: Icon(
                    _liked ? Icons.favorite : Icons.favorite_border,
                    color: _liked ? AppColors.like : AppColors.textDark,
                    size: 28,
                  ),
                ),
                Text(
                  '$_likes',
                  style: TextStyle(
                    color: _liked ? AppColors.like : AppColors.textDark,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.mode_comment_outlined, color: AppColors.textDark),
                ),
                Text(
                  '${widget.comments}',
                  style: const TextStyle(color: AppColors.textDark, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_border, color: AppColors.textDark),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Text(
              widget.description,
              style: const TextStyle(color: AppColors.textDark, fontSize: 14, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
