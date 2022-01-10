import 'package:find_go_app/features/common/constants/size_constants.dart';
import 'package:find_go_app/features/common/constants/text_style_constants.dart';
import 'package:find_go_app/features/presentation/components/utility/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
      width: Sizes.kWidth,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 12,
              offset: const Offset(0, 16), // changes position of shadow
            ),
          ],
          color: Palette.searchbarColor,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Icon(
            CupertinoIcons.search,
            color: Palette.defaultGreyColor,
          ),
          SizedBox(
            width: Sizes.kPaddingW,
          ),
          Text(
            'Search the location',
            style: ITextStyle.searchTextStyle(Palette.defaultGreyColor),
          ),
        ],
      ),
    );
  }
}
