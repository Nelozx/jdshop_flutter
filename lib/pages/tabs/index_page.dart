import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

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
      height: ScreenUtil().setHeight(20),
      margin: EdgeInsets.only(left: ScreenUtil().setWidth(20)),
      padding: EdgeInsets.only(left: ScreenUtil().setWidth(20)),
      decoration: BoxDecoration(
        border: Border(
            left: BorderSide(
                color: Colors.red, width: ScreenUtil().setWidth(6))),
      ),
      child: Text(
        string,
        style: const TextStyle(color: Colors.black54),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: const Size(375, 667),
        orientation: Orientation.portrait);
    return ListView(
      children: [
        _banner(),
        const SizedBox(
          height: 10,
        ),
        _titleWidget("猜你喜欢"),
        const SizedBox(
          height: 10,
        ),
        _titleWidget("热门推荐"),
      ],
    );
  }
}
