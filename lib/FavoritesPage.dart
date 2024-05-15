import 'package:flutter/material.dart';


class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Favorites',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your favorite movies:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            FavoriteItem(
              title: 'Inception',
              director: 'Christopher Nolan',
            ),
            FavoriteItem(
              title: 'The Shawshank Redemption',
              director: 'Frank Darabont',
            ),
            FavoriteItem(
              title: 'The Dark Knight',
              director: 'Christopher Nolan',
            ),
              FavoriteItem(
              title: 'Nightcrawler',
              director: 'Jake Gyllenhall',
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteItem extends StatelessWidget {
  final String title;
  final String director;

  const FavoriteItem({
    Key? key,
    required this.title,
    required this.director,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Directed by: $director',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
