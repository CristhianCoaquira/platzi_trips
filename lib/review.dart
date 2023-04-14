import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String pathImage;
  final String userNameText;
  final String reviewDetails;
  final String reviewComment;

  const Review(
      {Key? key,
      this.pathImage = "assets/img/people.jpg",
      this.userNameText = "Dadas Forever",
      this.reviewDetails = "1 review 5 photos",
      this.reviewComment = "There's an amazing place to visit"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avatar = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      child: const CircleAvatar(
        backgroundImage: AssetImage("asset/img/people.jpg"),
      ),
    );

    final photo = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(pathImage),
            fit: BoxFit.cover,
          )),
    );

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        userNameText,
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 17.0, fontFamily: "Lato"),
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        reviewDetails,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontSize: 13.0, fontFamily: "Lato", color: Color(0xFFa3a5a7)),
      ),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        reviewComment,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w900,
        ),
      ),
    );
    final star = Container(
      margin: const EdgeInsets.only(
        top: 5.0,
        left: 2.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 17,
      ),
    );
    final fiveStars = Row(
      children: <Widget>[star, star, star, star, star],
    );
    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        Row(
          children: [
            userInfo,
            fiveStars
          ],
        ),
        userComment,
      ],
    );
    return Row(
      children: [
        photo,
        userDetail,
      ],
    );
  }
}
