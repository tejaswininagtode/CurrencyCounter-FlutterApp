import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:currency_converter/dashboard.dart';

class CurrencyService {
  getCurrencyString(currency) {
    if (currency == 'USD') return ' United States Dollar';
    if (currency == 'RUB') return ' Russian Ruble';
    if (currency == 'JPY') return 'Japanese Yen';
    if (currency == 'INR') return 'Indian Rupee';
    if (currency == 'GBP') return 'Pound Sterling';
    if (currency == 'EUR') return 'Euro';
    if (currency == 'BTC') return 'Bitcoin';
  }

  convertCurrency(String fromCurrency, String toCurrency, int amount, context) {
    if (fromCurrency == 'INR') {
      switch (toCurrency) {
        case 'RUB':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashboardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 1.01).roundToDouble(),
                  currencyone: fromCurrency,
                  currencytwo: toCurrency,
                  isWhite: false)));
          break;
        case 'JPY':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashboardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 1.48).roundToDouble(),
                  currencyone: fromCurrency,
                  currencytwo: toCurrency,
                  isWhite: false)));
          break;
        case 'USD':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashboardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 0.01).roundToDouble(),
                  currencyone: fromCurrency,
                  currencytwo: toCurrency,
                  isWhite: false)));
          break;
        case 'EUR':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashboardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 0.01).roundToDouble(),
                  currencyone: fromCurrency,
                  currencytwo: toCurrency,
                  isWhite: false)));
          break;
        case 'BTC':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashboardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 3496329.51).roundToDouble(),
                  currencyone: fromCurrency,
                  currencytwo: toCurrency,
                  isWhite: false)));
          break;

        case 'GBP':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashboardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 0.01).roundToDouble(),
                  currencyone: fromCurrency,
                  currencytwo: toCurrency,
                  isWhite: false)));
          break;
      }
    }
    if (fromCurrency == 'RUB') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardPage(
            currencyVal: (amount / 1.00).toStringAsFixed(2),
            convertedCurrency: amount,
            currencyone: toCurrency,
            currencytwo: fromCurrency,
            isWhite: true,
          )));
    }

    if (fromCurrency == 'USD') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardPage(
            currencyVal: (amount * 74.21).toStringAsFixed(2),
            convertedCurrency: amount,
            currencyone: toCurrency,
            currencytwo: fromCurrency,
            isWhite: true,
          )));
    }

    if (fromCurrency == 'JPY') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardPage(
            currencyVal: (amount * 0.67).toStringAsFixed(2),
            convertedCurrency: amount,
            currencyone: toCurrency,
            currencytwo: fromCurrency,
            isWhite: true,
          )));
    }

    if (fromCurrency == 'EUR') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardPage(
            currencyVal: (amount * 87.35).toStringAsFixed(2),
            convertedCurrency: amount,
            currencyone: toCurrency,
            currencytwo: fromCurrency,
            isWhite: true,
          )));
    }

    if (fromCurrency == 'BTC') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardPage(
            currencyVal: (amount * 0.00).toStringAsFixed(2),
            convertedCurrency: amount,
            currencyone: toCurrency,
            currencytwo: fromCurrency,
            isWhite: true,
          )));
    }

    if (fromCurrency == 'GBP') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardPage(
            currencyVal: (amount * 102.12).toStringAsFixed(2),
            convertedCurrency: amount,
            currencyone: toCurrency,
            currencytwo: fromCurrency,
            isWhite: true,
          )));
    }
  }
}