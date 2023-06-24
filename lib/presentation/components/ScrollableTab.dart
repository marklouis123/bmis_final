import 'package:bmis_final/models/FormSection.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class ScrollableTab extends StatefulWidget {
  const ScrollableTab(
      {super.key,
      required this.tabs,
      required this.activeTab,
      required this.onTabChange});

  final List<FormSection> tabs;
  final int activeTab;
  final Function(int index) onTabChange;

  @override
  State<ScrollableTab> createState() => _ScrollableTabState();
}

class _ScrollableTabState extends State<ScrollableTab> {
  final scrollDirection = Axis.horizontal;

  late AutoScrollController controller;
  late List<List<int>> randomList;

  @override
  void initState() {
    super.initState();
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: scrollDirection);
  }

  @override
  Widget build(BuildContext context) {
    _scrollToIndex(widget.activeTab);
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: ListView(
            scrollDirection: scrollDirection,
            controller: controller,
            children: <Widget>[
              ...List.generate(widget.tabs.length, (index) {
                return AutoScrollTag(
                  key: ValueKey(index),
                  controller: controller,
                  index: index,
                  highlightColor: Colors.black.withOpacity(0.1),
                  child: index == widget.activeTab
                      ? Container(
                          margin: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Theme.of(context).primaryColor,
                                minimumSize: const Size(88, 36),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                              ),
                              onPressed: () {
                                widget.onTabChange(index);
                              },
                              child: Text(
                                widget.tabs[index].label,
                                style: const TextStyle(fontSize: 16),
                              )))
                      : Container(
                          margin: const EdgeInsets.all(8.0),
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  side: const BorderSide(
                                      color: Color(0xffc3d3d4), width: 4)),
                              onPressed: () {
                                widget.onTabChange(index);
                              },
                              child: Text(widget.tabs[index].label,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Theme.of(context).primaryColor,
                                  ))),
                        ),
                );
              }),
            ],
          ),
        ),
      ],
    );
  }

  Future _scrollToIndex(int index) async {
    await controller.scrollToIndex(index,
        preferPosition: AutoScrollPosition.middle);
  }
}
