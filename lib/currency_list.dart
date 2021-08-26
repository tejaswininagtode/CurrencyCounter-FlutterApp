import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:currency_converter/dashboard.dart';

class CurrencyList extends StatefulWidget {
  @override
  _CurrencyListState createState() => _CurrencyListState();
}

class _CurrencyListState extends State<CurrencyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0D47A1),
        appBar: AppBar(
          backgroundColor: Color(0xFF0D47A1),
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: ListView(
          children: <Widget>[
            getListItem('Russian Ruble', 'RUB'),
            getListItem('Japanese Yen', 'JPY'),
            getListItem('Pound Sterling', 'GBP'),
            getListItem(' United States Dollar', 'USD'),
            getListItem(' Euro', 'EUR'),
            getListItem(' Bitcoin', 'BTC'),
          ],
        ));
  }

  Widget getListItem(String currencyName, String currency) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushReplacement(CupertinoPageRoute(
            builder: (context) => DashboardPage(
                currencyVal: 0.0,
                isWhite: false,
                convertedCurrency: 0.0,
                currencyone: 'INR',
                currencytwo: currency)));
      },
      child: Padding(
        padding: EdgeInsets.only(left: 25.0, bottom: 20.0),
        child: Text(
          currencyName,
          style: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
    );
  }
}