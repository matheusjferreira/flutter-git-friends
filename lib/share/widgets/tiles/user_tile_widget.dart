import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_fonts.dart';

class UserTileWidget extends StatelessWidget {
  final String image;
  final String user;
  final int id;
  final String nodeId;
  const UserTileWidget({
    Key? key,
    required this.image,
    required this.id,
    required this.user,
    required this.nodeId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.snow,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          children: [
            Container(
              height: 64,
              width: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(user, style: AppFonts.paragraph),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('$id', style: AppFonts.paragraphSmall),
                      const SizedBox(width: 8),
                      const SizedBox(
                        height: 16,
                        child: VerticalDivider(
                          color: AppColors.grey,
                        ),
                      ),
                      const SizedBox(width: 8),
                      SizedBox(
                        width: 70,
                        child: Text(nodeId,
                            overflow: TextOverflow.ellipsis,
                            style: AppFonts.paragraphSmall),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
