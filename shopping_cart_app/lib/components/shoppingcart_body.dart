import 'package:flutter/material.dart';

class ShoppingcartBody extends StatelessWidget {
  const ShoppingcartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      //임시 ListView 사용
      child: Column(
        children: [
          _buildBodyNameAndPrice(),
          _buildBodyRatingAndReviewCount(),
          _buildBodyColorOptions(),
          _buildBodyButton(),
        ],
      ),
    );
  } // end of build

  //1. 이름과 가격
  Widget _buildBodyNameAndPrice() {
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Urban Soft AL 10.0",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "\$699",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  //2. 별점 리뷰 카운트
  Widget _buildBodyRatingAndReviewCount() {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30.0),
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Spacer(),
          Text(
            "review",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "(26)",
            style: TextStyle(fontSize: 18, color: Colors.blue),
          ),
        ],
      ),
    );
  }

  //3. 색상 옵션 선택
  Widget _buildBodyColorOptions() {
    return Padding(
      padding: EdgeInsets.only(bottom: 20, left: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Color Options"),
          SizedBox(height: 10),
          Row(
            children: [
              _buildColorOption(Colors.black),
              _buildColorOption(Colors.green),
              _buildColorOption(Colors.orange),
              _buildColorOption(Colors.grey),
              _buildColorOption(Colors.white),
            ],
          )
        ],
      ),
    );
  }

  //4. 색상 옵션 위젯을 만드는 함수
  Widget _buildColorOption(Color color) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              shape: BoxShape.circle,
            ),
          ),

          //Positioned 위젯 활용
          Positioned(
            left: 5,
            top: 5,
            child: ClipOval(
              child: Container(
                color: color,
                width: 40,
                height: 40,
              ),
            ),
          )
        ],
      ),
    );
  }

  //5. 버튼 만들기
  Widget _buildBodyButton() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Add to Cart",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      width: 350,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
} // end of body
