

void main() {
  runApp(const WalletAppClone());
}

class WalletAppClone extends StatelessWidget {
  static const String path = "lib/main.dart";

  const WalletAppClone({super.key});
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WalletApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WalletApp extends StatefulWidget {
  const WalletApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WalletAppState createState() => _WalletAppState();
}

class _WalletAppState extends State<WalletApp> {
  var screens = [
    const HomePage(),
    const CardPage(),
  ];

  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(38, 81, 158, 1),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "Card"),
        ],
        onTap: (index) {
          setState(() {
            selectedTab = index;
          });
        },
        showUnselectedLabels: true,
        iconSize: 30,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[selectedTab],
    );
    }
}
  
