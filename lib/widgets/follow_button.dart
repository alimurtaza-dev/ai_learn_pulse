import 'package:flutter/material.dart';

import '../gen/colors.gen.dart';

class FollowButton extends StatefulWidget {
  final bool initialFollowed;
  final ValueChanged<bool> onFollowStatusChanged;

  const FollowButton({
    super.key,
    required this.initialFollowed,
    required this.onFollowStatusChanged,
  });

  @override
  createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  late bool isFollowing;

  @override
  void initState() {
    super.initState();
    isFollowing = widget.initialFollowed;
  }

  void _toggleFollowStatus() {
    setState(() {
      isFollowing = !isFollowing;
      widget.onFollowStatusChanged(isFollowing);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleFollowStatus,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: BoxDecoration(
          color: ColorName.primaryColor,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Text(
          isFollowing ? "Following" : "Follow",
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
