import 'package:flutter/material.dart';

class PaginationWidget extends StatelessWidget {
  final int dropdownValue;
  final int total_pages;
  final Function(int) onPageSelected;

  PaginationWidget(
      {required this.dropdownValue,
      required this.total_pages,
      required this.onPageSelected});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
              onTap: dropdownValue == 1
                  ? () {}
                  : () {
                      onPageSelected(dropdownValue - 1);
                    },
              child: Icon(
                Icons.arrow_back_ios,
                color: dropdownValue == 1 ? Colors.grey : Colors.black,
                size: 17,
              )),
          SizedBox(
            width: 10,
          ),
          ListView.builder(
            itemCount: total_pages,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              if (index == 0 ||
                  index == total_pages - 1 ||
                  (index >= dropdownValue - 3 && index <= dropdownValue + 1)) {
                return InkWell(
                  onTap: () {
                    onPageSelected(index + 1);
                  },
                  child: Container(
                    height: 25,
                    width: 25,
                    margin: EdgeInsets.all(2),
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: dropdownValue != (index + 1)
                          ? Colors.transparent
                          : Colors.red,
                    ),
                    child: Center(
                      child: Text(
                        "${index + 1}",
                        style: dropdownValue != (index + 1)
                            ? TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              )
                            : TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                      ),
                    ),
                  ),
                );
              } else if (index == dropdownValue + 2 &&
                  dropdownValue < total_pages - 3) {
                return Text(
                  '...',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                );
              }
              return Container();
            },
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: dropdownValue == total_pages
                ? () {}
                : () {
                    onPageSelected(dropdownValue + 1);
                  },
            child: Icon(
              Icons.arrow_forward_ios,
              color: dropdownValue == total_pages ? Colors.grey : Colors.black,
              size: 17,
            ),
          ),
        ],
      ),
    );
  }
}
