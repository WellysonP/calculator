import 'package:calculator/components/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;
  const ButtonRow(this.buttons, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget>[], (list, button) {
          list.isEmpty
              ? list.add(button)
              : list.addAll([SizedBox(width: 1), button]);
          return list;
        }),
      ),
    );
  }
}
