import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_cart_app/constants.dart';

class ShoppingCartHeader extends StatefulWidget {
  const ShoppingCartHeader({super.key});

  @override
  State<ShoppingCartHeader> createState() => _ShoppingcartHeaderState();
}

class _ShoppingcartHeaderState extends State<ShoppingCartHeader> {
  //1. 상태
  int selectedId = 0;
  List<String> selectPic = [
    'assets/p1.jpeg',
    'assets/p2.jpeg',
    'assets/p3.jpeg',
    'assets/p4.jpeg',
  ];

  //상태는 행위를 통해서 변경해야 한다.
  void changeSelectedId(int sId) {
    setState(() {
      selectedId = sId;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 이미지를 항상 5 : 3 비율로 유지하기 위해 설정
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: AspectRatio(
            aspectRatio: 5 / 3,
            child: Image.asset(
              selectPic[selectedId],
              fit: BoxFit.cover,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildHeaderSelectorButton(0, Icons.directions_bike),
            _buildHeaderSelectorButton(1, Icons.motorcycle),
            _buildHeaderSelectorButton(2, CupertinoIcons.car_detailed),
            _buildHeaderSelectorButton(3, CupertinoIcons.airplane),
          ],
        )
      ],
    );
  }

  Widget _buildHeaderSelectorButton(int sId, IconData mIcon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: (selectedId == sId) ? kAccentColor : kSecondaryColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: IconButton(
          onPressed: () {
            changeSelectedId(sId);
          },
          icon: Icon(
            mIcon,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
} //end of header 위젯
