import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/matomete_check_view_model.dart';

class CheckBoxScreen extends ConsumerWidget {
  CheckBoxScreen({Key? key}) : super(key: key);

  final TextEditingController _searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matometeCheckState = ref.watch(matometeCheckProvider);

    final matometeCheckViewModel = ref.watch(matometeCheckProvider.notifier);

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),

          //------------//

          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.3),
                    filled: true,
                    border: const OutlineInputBorder(),
                    hintText: 'input filtering lower word',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 4,
                    ),
                  ),
                  controller: _searchTextController,
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  matometeCheckViewModel.getMatometeCheckData(
                    word: _searchTextController.text,
                  );
                },
                child: const Text('Search'),
              ),
            ],
          ),

          //------------//

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Checkbox(
                      value: matometeCheckState.allCheck,
                      onChanged: (bool? value) {
                        matometeCheckViewModel.changeCheckboxParent(
                            value: value!);
                      },
                    ),
                  ),
                  const Text('All Check'),
                ],
              ),
              GestureDetector(
                onTap: () {
                  matometeCheckViewModel.getMatometeCheckData(word: '');

                  _searchTextController.text = '';
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.close,
                      color: Colors.redAccent,
                    ),
                    Text(
                      '絞り込み解除',
                      style: TextStyle(color: Colors.redAccent),
                    ),
                  ],
                ),
              ),
            ],
          ),

          //------------//

          const Divider(
            thickness: 2,
            color: Colors.indigo,
          ),

          //------------//

          Expanded(
            child: MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView.separated(
                itemBuilder: (context, position) {
                  return CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: (matometeCheckState.checkValues[
                                matometeCheckState.record[position]] !=
                            null)
                        ? matometeCheckState
                            .checkValues[matometeCheckState.record[position]]
                        : false,
                    onChanged: (bool? value) {
                      matometeCheckViewModel.changeCheckboxInList(
                        kenmei: matometeCheckState.record[position],
                        value: value!,
                      );
                    },
                    title: Text(matometeCheckState.record[position]),
                  );
                },
                separatorBuilder: (context, position) => Container(),
                itemCount: matometeCheckState.record.length,
              ),
            ),
          ),

          //------------//
        ],
      ),
    );
  }
}
