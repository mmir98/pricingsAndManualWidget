import 'package:flutter/material.dart';
import 'package:pricingsWidget/manualWidget.dart';
import 'package:pricingsWidget/pricingsWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        accentColor: Colors.black,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, Object>> data = [
    {
      "id": 2,
      "title": "سرویس اطلاع رسانی",
      "description":
          "پروژه با ساختار گرافیکی اختصاصی طراحی می شود و برای سایت های اطلاع رسانی مناسب است.",
      "price": "5000000.0000"
    },
    {
      "id": 3,
      "title": "اطلاع رسانی حرفه ای یا فروشگاه ساده",
      "description":
          "پروژه با ساختار گرافیکی اختصاصی با سطوح دسترسی تولید می شود و مناسب فروشگاه و سایت های خاص است .",
      "price": "9000000.0000"
    },
    {
      "id": 4,
      "title": "فروشگاهی یا آگهی پیشرفته",
      "description":
          "تولید پوسته گرافیکی و پنل مدیریت محتوای اختصاصی برای فروش کالا یا خدمات و یا پرتال آگهی",
      "price": "17000000.0000"
    },
    {
      "id": 5,
      "title": "چند فروشندگی با میز کار",
      "description":
          "پروژه با ساختار گرافیکی اختصاصی و پنل مدیریت تخصصی متناسب با تکنیک های روز موتورهای جستجوگر تولید می شود و مناسب سایتهای حرفه ای است .",
      "price": "28000000.0000"
    }
  ];

  List<Map<String, Object>> manualData = [
    {
      "manual_title": " وب‌سایت‌های آموزش رایگان برنامه‌نویسی و طراحی سایت",
      "manual_entries": [
        {
          "id": 4,
          "title": "Code Conquest",
          "description":
              "این وب‌سایت هم یک منبع مناسب برای یادگیری رایگان طراحی سایت است. کافیست وارد این وب‌سایت شوید تا با مراحل نوشتن کد از صفر آشنا شوید. در صفحه اصلی سایت فهرست مطالبی درج شده که به تفسیر برنامه‌نویسی می‌پردازد. پس اگر تا به حال کد ننوشته‌اید به سراغ این توضیحات بروید.\r\n\r\nبعد از این مباحث درس‌نامه‌های مباحث طراحی سایت مثل HTML‌ و CSS قرار داده شده است. همچنین زبان‌های برنامه‌نویسی همچون پایتون هم در این وب‌سایت دوره‌های آموزشی دارند.\r\nبعد از یادگیری مباحث می‌توانید وارد بخش کوئیز شوید و دانش خود را تست کنید.",
          "image":
              "http://138.201.6.240:8001/media/manual_photos/free-learning-coding-with-code-1.png"
        },
        {
          "id": 3,
          "title": "Bitdegree",
          "description":
              "این وب‌سایت آموزش‌های مختلف را به صورت دسته‌بندی شده قرار داده است. برای مباحث مختلف مثال‌های متنوع همراه با تست به صورت زنده قرار داده که شما می‌توانید کد و خروجی کد را هزمان ببنید. طراحی زیبای سایت، جامع بودن مطالب و توضیحات مناسب باعث شده این وب‌سایت در این لیست قرار بگیرد!\r\n\r\nآموزش‌های رایگان این وب‌سایت عبارت‌انداز:\r\n\r\n    Html\r\n    CSS\r\n    Php\r\n    Javascript\r\n    Sql\r\n    Bootstrap\r\n    Jquery\r\n    Git\r\n    C++\r\n    Python\r\n    و…",
          "image":
              "http://138.201.6.240:8001/media/manual_photos/free-learning-coding-with-bitdegree.jpg"
        },
        {
          "id": 2,
          "title": "W3school",
          "description":
              "زمانی که صحبت از سایت آموزش رایگان طراحی وب، به زبان می‌آید قطعاً نام این وب‌سایت یکی از منابع خواهد بود. حتماً تا به حال نام W3school به گوش شما خورده است. در این وب‌سایت‌ می توانید آموزش‌های مختلف طراحی سایت را درس به درس و به زبان بسیار ساده مطالعه کنید.\r\n\r\nطراحی این سایت به گونه‌ای است که با ورود به هر آموزش کلیه دروس آن در مقابل دید شما قرار می‌گیرد. همچنین اجرای زنده‌ی کد باعث می‌شود روند یادگیری آسان‌تر باشد. ساختار ساده، دسترسی مناسب، سادگی توضیحات و وجود مثال‌های متنوع باعث شده این وب‌سایت برای علاقه‌مندان به طراحی‌سایت محبوب شود.\r\n\r\nاین وب‌سایت بدون نیاز به پرداخت هزینه و دردسرهای ثبت نام و ورود، مباحث زیر را در اختیار شما قرار می‌دهد:\r\n\r\n    Html\r\n    CSS\r\n    Php\r\n    Javascript\r\n    Sql\r\n    ASP\r\n    Bootstrap\r\n    Jquery\r\n    و…",
          "image":
              "http://138.201.6.240:8001/media/manual_photos/free-learning-coding-with-w3school.png"
        }
      ]
    },
    {
      "manual_title": "مجموعه آموزش طراحی سایت",
      "manual_entries": [
        {
          "id": 7,
          "title": "آموزش جاوا اسکریپت (JavaScript)",
          "description":
              "امروزه به دلیل آن که ارتباطات فضای مجازی رونق زیادی یافته است طراحی یک سایت به شکل مناسب و مورد پسند کاربران متفاوت اهمیت بالایی یافته است. به همین جهت صاحبان سرمایه و کار برای رونق کار خود به دنبال طراحان حرفه ای برای طراحی سایتی مناسب و کارآمد هستند. لذا یادگیری روش های مناسب و به روز طراحی سایت مورد توجه بسیاری از علاقه مندان و کارجویان قرار گرفته است. جاوا اسکریپت زبان برنامه نویسی مفسری در سمت کلاینت است که می توان بوسیله آن عناصر HTML موجود در صفحه وب و مقادیر CSS آن ها را تغییر داد و نیز ابزاری برای اعتبارسنجی داده ها است.",
          "image":
              "http://138.201.6.240:8001/media/manual_photos/javascript.png"
        },
        {
          "id": 6,
          "title": "آموزش برنامه نویسی PHP",
          "description":
              "زبان برنامه نویسی PHP یکی از زبان های برنامه نویسی سمت سرور است که کاربرد اصلی آن، در پیاده سازی وب سایت های دینامیکی (پویا) است. بازنویسی هسته PHP و ایجاد موتور پردازشی زند (Zend Engine) تحول بزرگی را در مسیر و تاریخچه زبان برنامه نویسی PHP ایجاد کرد، و در طی ۱۰ سال، این زبان برنامه نویسی، به مهم ترین ابزار برای پیاده سازی پروژه های وب دینامیکی تبدیل شد. هدف این فرادرس آموزش تمامی نکات و مهارت های عملی لازم برای ورود به دنیای جذاب برنامه نویسی و پیاده سازی دینامیکی وب است.",
          "image": "http://138.201.6.240:8001/media/manual_photos/php.png"
        },
        {
          "id": 5,
          "title": "آموزش وردپرس (WordPress) - مقدماتی",
          "description":
              "وردپرس، یک سیستم مدیریت محتوا متن باز و رایگان است که شما می توانید با استفاده از آن، انواع سایت و وبلاگ را راه اندازی کنید. وردپرس، به دلیل متن باز بودن و امکاناتی که در اختیار افراد قرار می دهد و همین طور، سادگی استفاده از پنل مدیریت، توانسته سهم بالایی از بازار استفاده از سیستم های مدیریت محتوا را به خود اختصاص دهد. همچنین، به دلیل استفاده بسیار بالا از این سیستم مدیریت محتوا، برنامه نویسان بسیاری نسبت به پیاده سازی افزونه ها و قالب های مختلف برای این سیستم مدیریت محتوا اقدام کرده اند که همین باعث استفاده بیشتر از وردپرس شده است. در این فرادرس، علاوه بر یادگیری خود وردپرس و نحوه استفاده از آن، چند افزونه کاربردی، نحوه راه اندازی یک وب سایت فروشگاهی با استفاده از وردپرس و افزونه ووکامرس را نیز می آموزیم.",
          "image": "http://138.201.6.240:8001/media/manual_photos/wp.png"
        }
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          SingleChildScrollView(
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ...manualData.map(
              (e) {
                return ManualWidget(
                  title: e['manual_title'],
                  entries: e['manual_entries'],
                );
              },
              // Divider()
            ).toList(),
            ...data
                .map((e) => PricingsWidget(
                      title: e['title'],
                      description: e['description'],
                      price: e['price'],
                    ))
                .toList()
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
