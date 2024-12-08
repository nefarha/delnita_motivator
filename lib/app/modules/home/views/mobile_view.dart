part of 'home_view.dart';

class _MobileView extends GetView<HomeController> {
  const _MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _FloatingMobileCard(),
            SizedBox(
              height: 10,
            ),
            _WordMobileHistory(),
          ],
        ),
      ),
    );
  }
}

class _FloatingMobileCard extends GetView<HomeController> {
  const _FloatingMobileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: Get.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: ColorPalette.headerGradient,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                ShaderMask(
                  shaderCallback: (bounds) =>
                      LinearGradient(colors: ColorPalette.backgroundGradient)
                          .createShader(bounds),
                  child: Image.asset(
                    'fire.png',
                    width: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Halo Delnita, Want To Hear Your Motivation?',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                              colors: ColorPalette.backgroundGradient)
                          .createShader(bounds),
                      child: Icon(
                        Icons.format_quote_outlined,
                        color: Colors.blueAccent,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                              colors: ColorPalette.backgroundGradient)
                          .createShader(bounds),
                      child: Icon(
                        Icons.bubble_chart_outlined,
                        color: Colors.blueAccent,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Obx(
                  () => controller.optionOrTodayQuote.value.match(
                    () => LinearProgressIndicator(),
                    (t) => t.match(
                      (l) => Text(
                        l,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      (r) => Column(
                        children: [
                          Text(
                            '"${r.quote}"',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '~Farhan Febryan',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Obx(
                  () => controller.isLoading.value
                      ? CircularProgressIndicator()
                      : GestureDetector(
                          onTap: () {
                            controller.addQuote();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: ColorPalette.buttonGradient),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            child: Text(
                              'Inspire Me!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _WordMobileHistory extends GetView<HomeController> {
  const _WordMobileHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(20),
      width: double.infinity,
      height: 160,
      child: Obx(
        () => controller.optionOrQuotes.value.match(
          () => SizedBox(
            height: 20,
          ),
          (t) => t.match(
            (l) => SizedBox(),
            (r) => Stack(
              children: [
                Center(
                  child: Container(
                    width: Get.width * 0.8,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_rounded,
                              color: const Color.fromARGB(255, 136, 177, 248),
                              size: 10,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              DateFormat('dd/MM/yyyy, hh:mm').format(
                                r[controller.selectedIndex.value].createdAt,
                              ),
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 8,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '"${r[controller.selectedIndex.value].quote}"',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          '~Farhan Febryan',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 8,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: Get.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        controller.selectedIndex.value > 0
                            ? GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {
                                  controller.changeQuoteHistory(isNext: false);
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.85),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 10,
                                          spreadRadius: 2,
                                        ),
                                      ],
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.keyboard_arrow_left,
                                  ),
                                ),
                              )
                            : SizedBox(),
                        controller.selectedIndex.value != r.length - 1
                            ? GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {
                                  controller.changeQuoteHistory(isNext: true);
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.85),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 10,
                                          spreadRadius: 2,
                                        ),
                                      ],
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.keyboard_arrow_right,
                                  ),
                                ),
                              )
                            : SizedBox()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
