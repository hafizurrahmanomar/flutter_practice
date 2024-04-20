import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Add your Firebase config here
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Photo Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const PhotoGalleryScreen(),
    );
  }
}

class PhotoGalleryScreen extends StatefulWidget {
  const PhotoGalleryScreen({super.key});

  @override
  _PhotoGalleryScreenState createState() => _PhotoGalleryScreenState();
}

class _PhotoGalleryScreenState extends State<PhotoGalleryScreen> {
  late final FirebaseStorage storage;
  late List<String> imageUrls = [];

  @override
  void initState() {
    super.initState();
    storage = FirebaseStorage.instance;
    getImageUrls();
  }

  Future<void> getImageUrls() async {
    final List<String> urls = [];
    final ListResult result = await storage.ref().child('photos').listAll();

    for (final ref in result.items) {
      final url = await ref.getDownloadURL();
      urls.add(url);
    }

    setState(() {
      imageUrls = urls;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Photo Gallery'),
      ),
      body: imageUrls.isNotEmpty
          ? GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return ImageTile(imageUrl: imageUrls[index]);
        },
      )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}

class ImageTile extends StatelessWidget {
  final String imageUrl;

  const ImageTile({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                  loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
        errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
      ),
    );
  }
}
