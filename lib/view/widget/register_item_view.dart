import 'package:flutter/material.dart';
import 'package:hack_19/data/register.dart';
import 'package:hack_19/view/resources/styles.dart';
import 'package:hack_19/view/resources/theme_colors.dart';
import 'package:hack_19/view/widget/shadow_card.dart';
import 'package:intl/intl.dart';

class RegisterItemView extends StatelessWidget {
  final Register _register;

  RegisterItemView(this._register);

  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
      child: Container(
        height: 124,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      _register.dateTime.day.toString(),
                      style: Styles.largeBoldTextStyle
                  ),
                  Text(
                      DateFormat('MMM').format(_register.dateTime),
                      style: Styles.boldTextStyle
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      _register.title,
                      style: Styles.primaryTextStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Text(
                          _register.description,
                          style: Styles.secondaryTextStyle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                      ),
                  ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        height: 24,
                        decoration: new BoxDecoration(
                            color: _getColor(_register.status),
                            borderRadius: new BorderRadius.all(Radius.circular(12.0))
                        ),
                        child: new Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Center(
                            child: new Text(
                                _getText(_register.status),
                                style: Styles.pillTextStyle),
                          )
                        )
                    ),
                  ],
                ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _getColor(Status status) {
    switch (status)
    {
      case Status.open:
        return ThemeColors.darkGrey;
      case Status.processing:
        return ThemeColors.orange;
      default:
        return ThemeColors.green;
    }
  }

  String _getText(Status status) {
    switch (status)
    {
      case Status.open:
        return "aberto";
      case Status.processing:
        return "processando";
      default:
        return "finalizado";
    }
  }
}