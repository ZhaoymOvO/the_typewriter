import 'package:flutter/material.dart';
import 'package:rss_dart/dart_rss.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 定义初始的文本内容
  // 如果从网络获取文章失败，就fallback到这个文本
  String passage = """如果你能看见这段文本，则说明文章加载失败了。
请确认是否已经连接到互联网。
如果您未连接到互联网，那么一切都是正常的。""";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Google Sans Flex',
        // fontFamily: 'Chill Round F',
        fontFamilyFallback: [
          'Chill Round F',
          'Noto Sans CJK TC',
          'Noto Sans CJK SC',
          'Noto Sans CJK JP',
          'Noto Sans CJK KR',
        ],
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        // useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      title: 'the Typewriter',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "the Typewriter",
              style: TextStyle(fontVariations: [FontVariation.weight(600)]),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Align(
              alignment: AlignmentGeometry.topLeft,
              child: Text(
                passage,
                style: TextStyle(
                  fontVariations: [FontVariation('ROND', 100)],
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 78,
          padding: EdgeInsets.all(16),
          child: TextField(
            style: TextStyle(
              fontVariations: [
                FontVariation('ROND', 100),
                FontVariation.weight(500),
              ],
            ),
            decoration: InputDecoration(
              hintText: 'type here...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
