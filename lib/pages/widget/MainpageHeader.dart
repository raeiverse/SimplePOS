import 'package:flutter/material.dart';

import '../../theme.dart';

class MainpageHeader extends StatelessWidget {
  const MainpageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 32, left: 40),
      width: MediaQuery.of(context).size.width / 1.5,
      height: MediaQuery.of(context).size.height / 5.7,
      decoration: BoxDecoration(
        borderRadius: CardRadius,
        color: whiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 32),
            width: 111,
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(28),
              ),
              border: Border.all(
                color: PrimaryMain,
                width: 1.5,
              ),
            ),
            child: Center(
              child: Text(
                'Posapp',
                style: TitleCD.copyWith(
                  fontSize: 24,
                  color: PrimaryMain,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 16),
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  borderRadius: CardRadius,
                  border: Border.all(
                    color: PrimaryMain,
                    width: 1.5,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/icon_setting.png',
                    width: 24,
                    height: 24,
                    color: PrimaryMain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  borderRadius: CardRadius,
                  border: Border.all(
                    color: PrimaryMain,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/icon_history.png',
                    color: PrimaryMain,
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Adrea B',
                      style: TextL.copyWith(
                        fontWeight: medium,
                        color: Neutral90,
                      ),
                    ),
                    Text(
                      'Cashier',
                      style: TextL.copyWith(
                        fontWeight: regular,
                        color: Neutral70,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/images_cashier.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
