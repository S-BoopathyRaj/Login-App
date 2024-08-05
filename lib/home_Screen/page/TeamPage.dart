import 'package:flutter/material.dart';
import 'package:login_app/home_Screen/widget/navigation_drawer_widget.dart';

class Teampage extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      "image": "assets/school1.jpg", 
      "label": "Sosnovy Bor restaurant",
    },
    {
      "image": "assets/school2.jpg", 
      "label": "Flower girl 2021",
    },
    {
      "image": "assets/school3.jpg", 
      "label": "Skopin family loves you",
    },
    {
      "image": "assets/school4.jpg", 
      "label": "Winter death",
    },
    
    {
      "image": "assets/school5.jpg", 
      "label": "Sunny Beach",
    },
    {
      "image": "assets/school6.jpg", 
      "label": "Mountain Adventure",
    },
    {
      "image": "assets/school7.jpg", 
      "label": "City Lights",
    },
    {
      "image": "assets/school8.jpg", 
      "label": "Desert Safari",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Team'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 50, 30, 233),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                      child: Image.asset(
                        items[index]['image']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      items[index]['label']!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
