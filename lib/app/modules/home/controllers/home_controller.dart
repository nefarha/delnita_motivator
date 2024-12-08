import 'package:delnita_motivator/app/data/model/quotes_model.dart';
import 'package:delnita_motivator/app/data/repository/quotes_repository.dart';
import 'package:delnita_motivator/app/data/shared/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _quotesRepo = QuotesRepository();

  final optionOrTodayQuote = Rx<Option<Either<String, QuotesModel>>>(none());
  final optionOrQuotes = Rx<Option<Either<String, List<QuotesModel>>>>(none());

  var quotesIds = RxList<String>.empty();
  var isLoading = false.obs;

  var selectedIndex = 0.obs;

  Future getTodayQuotes() async {
    final result = await _quotesRepo.getTodayQuote(date: DateTime.now());

    optionOrTodayQuote.value = optionOf(result);
  }

  Future getAllQuotes() async {
    final result = await _quotesRepo.getAllQuotes();

    result.match(
      (l) => null,
      (r) {
        quotesIds.value = r.map((e) => e.id).toList();
      },
    );

    optionOrQuotes.value = optionOf(result);
  }

  Future addQuote() async {
    isLoading.value = true;
    final result = await _quotesRepo.addQuote(ids: quotesIds);
    isLoading.value = false;
    result.match(
      (l) => Get.snackbar(
        'What happened?',
        l,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        backgroundGradient: LinearGradient(
          colors: ColorPalette.buttonGradient,
        ),
        colorText: ColorPalette.whiteText,
      ),
      (r) {
        getTodayQuotes();
        getAllQuotes();
      },
    );
  }

  changeQuoteHistory({required bool isNext}) {
    switch (isNext) {
      case true:
        if (selectedIndex.value < quotesIds.length - 1) {
          selectedIndex.value++;
        }
        break;
      case false:
        if (selectedIndex.value > 0) {
          selectedIndex.value--;
        }
        break;
      default:
        if (selectedIndex.value < quotesIds.length - 1) {
          selectedIndex.value++;
        }
    }
  }

  @override
  void onInit() {
    getTodayQuotes();
    getAllQuotes();
    super.onInit();
  }
}
