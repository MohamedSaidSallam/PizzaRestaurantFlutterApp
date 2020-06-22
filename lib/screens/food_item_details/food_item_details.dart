import 'package:flutter/material.dart';
import 'package:pizza_restaurant/screens/base_screen.dart';
import 'package:pizza_restaurant/theme/style.dart' as style;

class FoodItemDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Basescreen screen = Basescreen()
      ..bodyItems = <Widget>[
        Image.asset(
          "assets/images/pepperoni-pizza.jpg",
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Awesome Pizza",
              style: style.detailsTitleStyle,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 2.0, 2.0, 2.0),
          child: Text(
              "Grilled Chicken, Tomato, Onions, Green Pepper, Fresh Mushroom, Jalapeno",
              style: style.detailsDescStyle),
        ),
        Divider(
          thickness: 1.7,
        ),
        SelectionSection<FoodSize>("Size", FoodSize.values),
        Divider(
          thickness: 1.7,
        ),
        SelectionSection<CrustType>("Crust", CrustType.values),
        Divider(
          thickness: 1.7,
        ),
        DetailsFooter(),
      ];
    return screen.build(context);
  }
}

enum FoodSize { small, medium, large, extra_large }
enum CrustType { classic, stuffed_crust }

class SelectionSection<Options> extends StatefulWidget {
  final String selectionHeader;
  final List<Options> _optionsValues;

  SelectionSection(this.selectionHeader, this._optionsValues, {Key key})
      : super(key: key);

  @override
  _SelectionSectionState createState() =>
      _SelectionSectionState<Options>(selectionHeader, this._optionsValues);
}

class _SelectionSectionState<Options> extends State<SelectionSection> {
  Options _currentSelection;

  final String _selectionHeader;
  final List<Options> _optionsValues;

  _SelectionSectionState(this._selectionHeader, this._optionsValues) {
    _currentSelection = _optionsValues[0];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Select ${this._selectionHeader}:",
                style: style.sectionHeaderStyle,
              )),
        ),
        ...?List<RadioListTile<Options>>.generate(
            _optionsValues.length,
            (int i) => RadioListTile<Options>(
                  title: Text(_optionsValues[i]
                      .toString()
                      .split('.')
                      .last
                      .replaceAll('_', ' ')
                      .toUpperCase()),
                  value: _optionsValues[i],
                  groupValue: _currentSelection,
                  onChanged: (Options value) {
                    setState(() {
                      _currentSelection = value;
                    });
                  },
                )),
      ],
    );
  }
}

class DetailsFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Total", style: style.normalTextStyle,),
            Text("XXX\$", style: style.normalTextStyle,),
          ],
        ),
      ),
        RaisedButton(
          onPressed: () {},
          child: Text("Add to Cart", style: style.normalTextStyle.apply(color: Colors.white),),
          color: style.mainColor,
        ),
    ],);
  }
}
