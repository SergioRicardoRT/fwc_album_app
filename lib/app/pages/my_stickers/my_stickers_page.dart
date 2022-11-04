import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/pages/my_stickers/widgets/sticker_group.dart';
import 'package:fwc_album_app/app/pages/my_stickers/widgets/sticker_group_filter.dart';

import 'widgets/sticker_status_filter.dart';

class MyStickersPage extends StatelessWidget {
  const MyStickersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas figurinhas'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: const [
                StickerStatusFilter(
                  filterSelected: '',
                ),
                StickerGroupFilter(),
              ],
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(childCount: 1,
            (context, index) {
              return const StickerGroup();
            },
          ))
        ],
      ),
    );
  }
}
