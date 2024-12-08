import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delnita_motivator/app/data/model/quotes_model.dart';
import 'package:fpdart/fpdart.dart';

class QuotesRepository {
  final _firestore = FirebaseFirestore.instance.collection('history_quotes');

  Future<Either<String, QuotesModel>> getTodayQuote(
      {required DateTime date}) async {
    try {
      DateTime startOfDay = DateTime(date.year, date.month, date.day);
      DateTime endOfDay = startOfDay.add(Duration(days: 1));

      // Query Firestore
      QuerySnapshot result = await _firestore
          .where('created_at', isGreaterThanOrEqualTo: startOfDay)
          .where('created_at', isLessThan: endOfDay)
          .limit(1)
          .get();

      if (result.docs.isEmpty) {
        return left('No Quotes Today');
      }

      var model = QuotesModel.fromJson(
          result.docs.first.data() as Map<String, dynamic>);

      return right(model);
    } catch (e) {
      return Left('Something went wrong');
    }
  }

  Future<Either<String, List<QuotesModel>>> getAllQuotes() async {
    try {
      QuerySnapshot result =
          await _firestore.orderBy('created_at', descending: false).get();

      if (result.docs.isEmpty) {
        return left('No Quotes');
      }

      List<QuotesModel> quotes = result.docs
          .map((e) => QuotesModel.fromJson(e.data() as Map<String, dynamic>))
          .toList();

      return right(quotes);
    } catch (e) {
      return Left('Something went wrong');
    }
  }

  Future<Either<String, Unit>> addQuote({required List<String> ids}) async {
    try {
      DateTime startOfDay = DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day);
      DateTime endOfDay = startOfDay.add(Duration(days: 1));

      Random random = Random();
      List<QuotesModel> availableItems = QuotesModel.quotesList
          .where(
            (e) => !ids.contains(e.id),
          )
          .toList();

      QuotesModel randomItem =
          availableItems[random.nextInt(availableItems.length)];

      // Query Firestore
      QuerySnapshot result = await _firestore
          .where('created_at', isGreaterThanOrEqualTo: startOfDay)
          .where('created_at', isLessThan: endOfDay)
          .limit(1)
          .get();

      if (result.docs.isNotEmpty) {
        return left('You already have a quote for today');
      }

      await _firestore.add(
        randomItem
            .copyWith(
              createdAt: DateTime.now(),
            )
            .toJson(),
      );
      return right(unit);
    } catch (e) {
      return Left('Something went wrong');
    }
  }
}
