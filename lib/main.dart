import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supermercado Bom de Preço',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.orangeAccent,
          secondary: Colors.lightGreenAccent,
        ),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Poppins', // Fonte mais elegante
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black87, fontSize: 16),
          bodyMedium: TextStyle(color: Colors.black54),
          titleLarge: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu de Opções", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orangeAccent, // Cor vibrante na AppBar
        elevation: 4, // Sombra para dar profundidade
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text(
                "igorbiancobuosi@hotmail.com",
                style: TextStyle(
                  color: Colors.white, // Contraste com fundo escuro
                  fontSize: 14,
                ),
              ),
              accountName: Text(
                "Igor - Sup Bom de Preço",
                style: TextStyle(
                  color: Colors.white, // Contraste com fundo escuro
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/perfil.png')),
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent, // Cor de fundo do Drawer
              ),
            ),
            ListTile(
              leading: Icon(Icons.login, color: Colors.deepOrangeAccent),
              title: Text(
                "Minha Área",
                style: TextStyle(
                  color: Colors.deepOrangeAccent, // Cor para ícones e texto
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                // Navegar para outra página
              },
            ),
            ListTile(
              leading:
                  Icon(Icons.shopping_cart, color: Colors.deepOrangeAccent),
              title: Text(
                "Produtos",
                style: TextStyle(
                  color: Colors.deepOrangeAccent, // Cor para ícones e texto
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                // Navegar para outra página
              },
            ),
            ListTile(
              leading: Icon(Icons.api_sharp, color: Colors.deepOrangeAccent),
              title: Text(
                "Ler API",
                style: TextStyle(
                  color: Colors.deepOrangeAccent, // Cor para ícones e texto
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                // Navegar para outra página
              },
            ),
            ListTile(
              leading: Icon(Icons.email, color: Colors.deepOrangeAccent),
              title: Text(
                "Contato",
                style: TextStyle(
                  color: Colors.deepOrangeAccent, // Cor para ícones e texto
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                // Navegar para outra página
              },
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('lib/assets/images/background.png'),
          ),
        ),
      ),
    );
  }
}
