// Add card screen three data

import 'package:flutter/material.dart';

class TransactionData {
  final String image;
  final String title;
  final String total;
  final Color color;

  TransactionData(
    this.image,
    this.title,
    this.total,
    this.color,
  );
}

final List<TransactionData> transactionData = [
  TransactionData(
    'assets/foodpanda - png 0.png',
    'FoodPanda',
    '-89SAR',
    Colors.red,
  ),
  TransactionData(
    'assets/Frame 154.png',
    'Income',
    '100SAR',
    Colors.green,
  ),
  TransactionData(
    'assets/Frame 154 (1).png',
    'Bills',
    '-100SAR',
    Colors.red,
  ),
];

// Home Screen data

class HomeData {
  final String image;
  final String title;
  final String total;
  final Color color;

  HomeData(
    this.image,
    this.title,
    this.total,
    this.color,
  );
}

final List<HomeData> homeData = [
  HomeData(
    'assets/🦆 icon _Apps Netflix_.png',
    'Netflix',
    '-89SAR',
    Colors.red,
  ),
  HomeData(
    'assets/Frame 154 (2).png',
    'Income',
    '100SAR',
    Colors.green,
  ),
  HomeData(
    'assets/Frame 154 (3).png',
    'Bills',
    '-100SAR',
    Colors.red,
  ),
  HomeData(
    'assets/🦆 icon _youtube round 2_.png',
    'Youtube premium',
    '-100SAR',
    Colors.red,
  ),
];

// Spending list data

class SpendingData {
  final String image;
  final String title;
  final String subtitle;
  final String total;

  SpendingData(
    this.image,
    this.title,
    this.subtitle,
    this.total,
  );
}

final List<SpendingData> spendingData = [
  SpendingData(
    'assets/q (2).png',
    'Netflix',
    '1st Jan at 7:20pm',
    '-89SAR',
  ),
  SpendingData(
    'assets/q (3).png',
    'Google',
    '5th Jan at 7:20pm',
    '100SAR',
  ),
  SpendingData(
    'assets/q (4).png',
    'Namecheap',
    '10th Jan at 7:20pm',
    '-100SAR',
  ),
  SpendingData(
    'assets/q (5).png',
    'Bluehost',
    '15th Jan at 7:20pm',
    '-100SAR',
  ),
  SpendingData(
    'assets/q (1).png',
    'Foodpanda',
    '20th Jan at 7:20pm',
    '-100SAR',
  ),
];
