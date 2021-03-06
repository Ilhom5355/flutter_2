import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_flutter_way_2/constants.dart';
import 'package:the_flutter_way_2/main.dart';
import 'package:the_flutter_way_2/widgets/food_card.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyApp();
                    }));
                  },
                  child: SvgPicture.asset(
                    "assets/icons/backward.svg",
                    height: 11,
                  ),
                ),
                SvgPicture.asset(
                  "assets/icons/menu.svg",
                  height: 11,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.all(6),
              height: 305,
              width: 305,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondaryColor,
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/image_1_big.png"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Vegan salad bowl\n",
                          style: Theme.of(context).textTheme.subtitle1),
                      TextSpan(
                        text: "With red tomato",
                        style: TextStyle(
                          color: kTextColor.withOpacity(.7),
                        ),
                      ),
                    ],
                  ),
                ),
                Text("\$20",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: kPrimaryColor)),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Contrary to popular belief, Lorem Ipsum is not simply random"
              " text. It has roots in a piece of classical Latin literature"
              " from 45 BC, making it over 2000 years old. Richard McClintock,"
              " a Latin professor at Hampden-Sydney College in Virginia,"
              " looked up one of the more obscure Latin words, consectetur,"
              " from a Lorem Ipsum passage, and going through the cites of the"
              " word in classical literature, discovered the undoubtable source.",
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 27),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(.19),
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Add to bag",
                          style: Theme.of(context).textTheme.button,
                        ),
                        SizedBox(width: 30),
                        SvgPicture.asset(
                          "assets/icons/forward.svg",
                          height: 11,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor.withOpacity(.26),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor,
                          ),
                          child: SvgPicture.asset("assets/icons/bag.svg"),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 10,
                          child: Container(
                            alignment: Alignment.center,
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhiteColor,
                            ),
                            child: Text(
                              "0",
                              style:
                                  Theme.of(context).textTheme.button.copyWith(
                                        color: kPrimaryColor,
                                        fontSize: 16,
                                      ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
