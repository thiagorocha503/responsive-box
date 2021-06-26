import 'package:flutter/material.dart';
import 'package:responsive_box/responsive_box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ResponsiveBox(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 2),
        ),
        child: Column(
          children: [
            Text(
              '    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In feugiat condimentum eros sit amet suscipit. Fusce id ipsum in lectus varius sagittis. Praesent malesuada arcu non erat venenatis, in eleifend sapien auctor. Phasellus vehicula faucibus elit a sollicitudin. Sed ultrices orci fringilla, vestibulum ipsum id, posuere orci. Maecenas nec leo at elit luctus vestibulum ac vehicula tortor. Donec accumsan sapien vel est lobortis, at sagittis est bibendum. Nunc a vehicula risus. Donec rutrum elit nisl, vel ultrices ipsum tempor et. Ut sagittis nisi at lectus tempor egestas. Aenean molestie dolor ut lacus ullamcorper imperdiet. Duis malesuada nisi a sapien tempus sagittis. Mauris cursus sollicitudin arcu, eget sollicitudin lorem sagittis sit amet. Aliquam nec viverra velit.',
            ),
            Text(
              '    Aliquam efficitur tempor diam, in volutpat risus tristique sed. Maecenas bibendum auctor dui ut aliquet. Phasellus pretium sollicitudin nisi nec luctus. Aenean in rutrum diam, ut cursus odio. Curabitur at leo lorem. Fusce tincidunt massa rhoncus purus aliquet, vel vestibulum tortor ullamcorper. Duis tempor viverra nulla ac aliquam. Quisque luctus lectus tempus semper facilisis. Vestibulum vulputate lorem imperdiet consequat mollis. Quisque sapien nisi, facilisis eu rhoncus a, auctor et magna. Duis varius interdum orci in malesuada. Pellentesque volutpat, diam a porttitor viverra, sem orci efficitur lorem, a ultrices velit erat non ante. Etiam in vulputate diam. Morbi placerat mauris nec nunc imperdiet, vitae vestibulum nisl consectetur. Etiam gravida, dui vel malesuada sagittis, sem nunc tincidunt augue, sed ullamcorper enim mi quis nulla.',
            )
          ],
        ),
      ),
    );
  }
}
