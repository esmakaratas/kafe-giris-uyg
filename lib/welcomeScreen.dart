import 'package:flutter/material.dart';
import 'loginScreen.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  @override
  Widget build(BuildContext context) {
    // Ekranın genişliğini ve yüksekliğini almak için MediaQuery kullanıyoruz
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Arka plan resmi
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/welcomescreen.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Alt kısma yerleştirilen buton
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.05),
              child: GestureDetector(
                onTap: () {
                  // loginScreen.dart ekranına yönlendirme
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: SizedBox(
                  // Buton boyutunu ayarlamak için SizedBox kullanıyoruz
                  width: screenWidth *
                      0.2, // Genişliği ekran genişliğinin %20'si olarak ayarlandı
                  height: screenWidth *
                      0.2, // Yüksekliği ekran genişliğinin %20'si olarak ayarlandı
                  child: Image.asset(
                    'assets/images/ileri.png',
                    fit: BoxFit
                        .contain, // Resmin tam olarak alana sığmasını sağlıyor
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
