import 'package:flutter/material.dart';

Widget albumPage({required BuildContext context}) {
  return SizedBox(
    width: double.infinity,
    height: double.infinity,
    child: scrollAlbum(),
  );
}

Widget scrollAlbum() {
  return Column(
    children: [
      SizedBox(height: 10),
      Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                icon: IconButton(
                  onPressed: null,
                  icon: const Icon(Icons.search),
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          IconButton(
            onPressed: null,
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      SizedBox(height: 10),
      Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              rowPictures(
                image: 'assets/images/paysage1.jpeg',
                imageName: "Nom de l'album",
                image2: 'assets/images/paysage1.jpeg',
                imageName2: "Nom de l'album",
              ),
              const SizedBox(height: 10),
              rowPictures(
                image: 'assets/images/paysage1.jpeg',
                imageName: "Nom de l'album",
                image2: 'assets/images/paysage1.jpeg',
                imageName2: "Nom de l'album",
              ),
              const SizedBox(height: 10),
              rowPictures(
                image: 'assets/images/paysage1.jpeg',
                imageName: "Nom de l'album",
                image2: 'assets/images/paysage1.jpeg',
                imageName2: "Nom de l'album",
              ),
              const SizedBox(height: 10),
              rowPictures(
                image: 'assets/images/paysage1.jpeg',
                imageName: "Nom de l'album",
                image2: 'assets/images/paysage1.jpeg',
                imageName2: "Nom de l'album",
              ),
              const SizedBox(height: 10),
              rowPictures(
                image: 'assets/images/paysage1.jpeg',
                imageName: "Nom de l'album",
                image2: 'assets/images/paysage1.jpeg',
                imageName2: "Nom de l'album",
              ),
              const SizedBox(height: 10),
              rowPictures(
                image: 'assets/images/paysage1.jpeg',
                imageName: "Nom de l'album",
                image2: 'assets/images/paysage1.jpeg',
                imageName2: "Nom de l'album",
              ),
              const SizedBox(height: 10),
              rowPictures(
                image: 'assets/images/paysage1.jpeg',
                imageName: "Nom de l'album",
                image2: 'assets/images/paysage1.jpeg',
                imageName2: "Nom de l'album",
              ),
              const SizedBox(height: 10),
              rowPictures(
                image: 'assets/images/paysage1.jpeg',
                imageName: "Nom de l'album",
                image2: 'assets/images/paysage1.jpeg',
                imageName2: "Nom de l'album",
              ),
              SizedBox(height: 10),
              rowPictures(
                image: 'assets/images/paysage1.jpeg',
                imageName: "Nom de l'album",
                image2: 'assets/images/paysage1.jpeg',
                imageName2: "Nom de l'album",
              ),
              const SizedBox(height: 10),
              rowPictures(
                image: 'assets/images/paysage1.jpeg',
                imageName: "Nom de l'album",
                image2: 'assets/images/paysage1.jpeg',
                imageName2: "Nom de l'album",
              ),
              const SizedBox(height: 10),
              rowPictures(
                image: 'assets/images/paysage1.jpeg',
                imageName: "Nom de l'album",
                image2: 'assets/images/paysage1.jpeg',
                imageName2: "Nom de l'album",
              ),
              const SizedBox(height: 10),
              rowPictures(
                image: 'assets/images/paysage1.jpeg',
                imageName: "Nom de l'album",
                image2: 'assets/images/paysage1.jpeg',
                imageName2: "Nom de l'album",
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget rowPictures(
    {required String image,
    required String imageName,
    required String image2,
    required String imageName2}) {
  return Row(
    children: <Widget>[
      Expanded(child: albumCards(image: image, imageName: imageName)),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: albumCards(image: image2, imageName: imageName2),
      ),
    ],
  );
}

Widget albumCards({required String image, required String imageName}) {
  return Card(
    child: Column(
      children: <Widget>[
        Image.asset(image),
        Text(imageName),
      ],
    ),
  );
}

EdgeInsets paddingDimension({required BuildContext context}) {
  return EdgeInsets.fromLTRB(
    MediaQuery.of(context).size.width * 0.02,
    0,
    MediaQuery.of(context).size.width * 0.02,
    0,
  );
}
