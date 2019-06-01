import 'package:flutter/material.dart';
import 'package:hack_19/data/register.dart';
import 'package:hack_19/view/resources/styles.dart';
import 'package:hack_19/view/widget/shadow_card.dart';
import 'package:intl/intl.dart';

class RegisterItemView extends StatelessWidget {
  final Register _register;

  RegisterItemView(this._register);

  @override
  Widget build(BuildContext context) {
    return ShadowCard(

      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Container(
        height: 124,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(_register.dateTime.day.toString(), style: Styles.largeBoldTextStyle),
                  Text(DateFormat('MMM').format(_register.dateTime), style: Styles.boldTextStyle)
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text(_register.title, style: Styles.primaryTextStyle, maxLines: 1)
                  ),
                  Text(_register.description, style: Styles.secondaryTextStyle, maxLines: 2)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}