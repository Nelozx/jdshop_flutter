import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:jdshop/service/screen_adapter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget _banner() {
    List _imgs = [
      {"url": "https://www.itying.com/images/flutter/slide01.jpg"},
      {"url": "https://www.itying.com/images/flutter/slide02.jpg"},
      {"url": "https://www.itying.com/images/flutter/slide03.jpg"},
    ];
    return Container(
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: Swiper(
          itemBuilder: (context, index) {
            return Image.network(
              _imgs[index]["url"],
              fit: BoxFit.fill,
            );
          },
          itemCount: _imgs.length,
          pagination: const SwiperPagination(),
          autoplay: true,
        ),
      ),
    );
  }

  Widget _titleWidget(string) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: ScreenAdapter.width(20)),
      padding: EdgeInsets.only(left: ScreenAdapter.width(20)),
      decoration: BoxDecoration(
        border: Border(
            left: BorderSide(color: Colors.red, width: ScreenAdapter.width(6))),
      ),
      child: Text(
        string,
        style: const TextStyle(color: Colors.black54),
      ),
    );
  }

  Widget _hotProductListWidget() {
    return Container(
      padding: EdgeInsets.all(ScreenAdapter.width(20)),
      height: ScreenAdapter.height(220),
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: ScreenAdapter.height(140),
                width: ScreenAdapter.height(140),
                margin: EdgeInsets.only(right: ScreenAdapter.width(20)),
                child: Image.network(
                  "https://www.itying.com/images/flutter/hot${index+1}.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Text("第${index+1}条")
            ],
          );
        },
        itemCount: 10,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenAdapter.of(context);
    return ListView(
      children: [
        _banner(),
        SizedBox(
          height: ScreenAdapter.height(10),
        ),
        _titleWidget("猜你喜欢"),
        SizedBox(
          height: ScreenAdapter.height(10),
        ),
        _titleWidget("热门推荐"),
        _hotProductListWidget()
      ],
    );
  }
}
