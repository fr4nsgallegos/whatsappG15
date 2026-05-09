import 'package:flutter/material.dart';
import 'package:whatsappg15/widgets/call_item_listile.dart';

class CallTab extends StatelessWidget {
  const CallTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CallItemListile(),
        CallItemListile(),
        CallItemListile(),
        CallItemListile(),
        CallItemListile(),
      ],
    );
  }
}
