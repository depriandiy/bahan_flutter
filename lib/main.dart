import 'package:coba_lagi/providers/2http_post.dart';
import 'package:coba_lagi/providers/0get_products.dart';
import 'package:coba_lagi/providers/1get_carts.dart';
import 'package:coba_lagi/providers/3http_get.dart';
import 'package:coba_lagi/screens/1cart_item.dart';
import 'package:coba_lagi/widgets/0product_detail.dart';
import 'package:coba_lagi/widgets/0product_list.dart';
import 'package:coba_lagi/widgets/2home_http.dart';
import 'package:coba_lagi/widgets/2home_provider.dart';
import 'package:coba_lagi/widgets/3home_http_get.dart';
import 'package:coba_lagi/widgets/3http_get_provider.dart';
import 'package:coba_lagi/widgets/app_bar.dart';
import 'package:coba_lagi/widgets/cupertino.dart';
import 'package:coba_lagi/widgets/date_format.dart';
import 'package:coba_lagi/widgets/dialog.dart';
import 'package:coba_lagi/widgets/dismissible.dart';
import 'package:coba_lagi/widgets/flexible.dart';
import 'package:coba_lagi/widgets/grid_view.dart';
import 'package:coba_lagi/widgets/image_widget.dart';
import 'package:coba_lagi/widgets/invisible_widget.dart';
import 'package:coba_lagi/widgets/layout_builder.dart';
import 'package:coba_lagi/widgets/list_tile.dart';
import 'package:coba_lagi/widgets/list_view.dart';
import 'package:coba_lagi/widgets/mapping_list.dart';
import 'package:coba_lagi/widgets/media_query.dart';
import 'package:coba_lagi/widgets/model_sample.dart';
import 'package:coba_lagi/widgets/navigation.dart';
import 'package:coba_lagi/widgets/navigation2.dart';
import 'package:coba_lagi/widgets/routes.dart';
import 'package:coba_lagi/widgets/sample_container.dart';
import 'package:coba_lagi/widgets/stateful_widget.dart';
import 'package:coba_lagi/widgets/switch.dart';
import 'package:coba_lagi/widgets/tab_bar.dart';
import 'package:coba_lagi/widgets/text_field.dart';
import 'package:coba_lagi/widgets/text_field_control.dart';
import 'package:coba_lagi/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => getCart()),
        ChangeNotifierProvider(create: (context) => Products()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "MyShop",
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          colorScheme: const ColorScheme.light(
            secondary: Colors.amber,
          ),
          fontFamily: 'Lato',
        ),
        // home: const ListProduct(),
        //initialRoute: '/laybuilder', // cara 2 pakai routeName.
        // home: const HttpGetHome(),
        home: ChangeNotifierProvider(
          create: (context) => HttpGetProvider(),
          child: const HttpGetHomeProvider(),
        ),
        routes: {
          BelajarRoutes.routeName: (context) => const BelajarRoutes(),
          CartIcon.routeName: (context) => CartIcon(),
          '/detail-product': (context) => const DetailProduct(),
        },
      ),
    );
  }
}
