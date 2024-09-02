import 'package:flutter/material.dart';
import 'package:navbar/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
 final List<item> items = [
  item( 
    image: "https://imgix.bustle.com/uploads/image/2020/1/15/d342a6fc-0ab6-4792-bdea-b88b8851dec4-4341226321_2_1_1.jpg?w=800&fit=crop&crop=faces&auto=format%2Ccompress",
    name: "Yellow Jacket", 
    price: 2000000, 
    deskripsi: "Jacket Untuk musim dingin, Jaket winter dengan model terbaru yang, cocok untuk dipakai sehari-hari, baik itu digunakan formal maupun non-formal.",
  ),
  item(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIBElZMyx8alAZypkuU2iP2qcMKuPjkCy-MC0dKSB41LVfDozBdozyZkapAQdzfW_gPNQ&usqp=CAU",
    name: "Purple One set", 
    price: 999000, 
    deskripsi: "One Set untuk olahraga, One Set dengan model terbaru yang, cocok untuk diguankan olahraga sehari-hari karena terbuat dari bahan yang mudah menyerap keringat. ", 
  ),
  item(
    image: "https://static.zara.net/photos///2023/I/0/1/p/6895/003/712/12/w/1920/6895003712_1_1_1.jpg?ts=1687958422549",
    name: "Dress", 
    price: 1000000, 
    deskripsi: "Dress untuk musim panas, Dress dengan model terbaru dan paling laku,  cocok diguanakan ketika sedang bepergian di musim panas, karena bahannya lembut dan dingin, jadi kita tidak mudah merasa kepanasan ", 
  ),
  item(
    image: "https://static.zara.net/photos///2023/I/0/1/p/6895/003/712/12/w/1920/6895003712_1_1_1.jpg?ts=1687958422549",
    name: "Dress", 
    price: 1000000, 
    deskripsi: "Dress untuk musim panas, Dress dengan model terbaru dan paling laku,  cocok diguanakan ketika sedang bepergian di musim panas, karena bahannya lembut dan dingin, jadi kita tidak mudah merasa kepanasan ", 
  ),
   item(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIBElZMyx8alAZypkuU2iP2qcMKuPjkCy-MC0dKSB41LVfDozBdozyZkapAQdzfW_gPNQ&usqp=CAU",
    name: "Purple One set", 
    price: 999000, 
    deskripsi: "One Set untuk olahraga, One Set dengan model terbaru yang, cocok untuk diguankan olahraga sehari-hari karena terbuat dari bahan yang mudah menyerap keringat. ", 
  ),
   item( 
    image: "https://imgix.bustle.com/uploads/image/2020/1/15/d342a6fc-0ab6-4792-bdea-b88b8851dec4-4341226321_2_1_1.jpg?w=800&fit=crop&crop=faces&auto=format%2Ccompress",
    name: "Yellow Jacket", 
    price: 2000000, 
    deskripsi: "Jacket Untuk musim dingin, Jaket winter dengan model terbaru yang, cocok untuk dipakai sehari-hari, baik itu digunakan formal maupun non-formal.",
  ),
 ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.home, color: Color(0xFF545D68),),
          onPressed: () {},
          ),
          title: Text('Pickup',
          style: TextStyle(
            fontFamily: 'Varela', fontSize: 20.0, color: Color(0xFF545D68)),
            ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo[400]),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.crib_outlined,
                size: 50,
              ),
              title: Text('Foods'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFFEECE2),
      body:  Container(
        margin: EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          childAspectRatio: (150/150),),
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
             onTap: () {
  Navigator.pushNamed(
    context,
    '/item', arguments: item);
  
},

              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Column(
                  children: [
                     ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.network(
                          item.image,
                          height: 150,
                          width: 100,
  
                        ),
                      ),
                    SizedBox(height: 8),
                    Text(
                    item.name, 
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                      ),
                  ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
