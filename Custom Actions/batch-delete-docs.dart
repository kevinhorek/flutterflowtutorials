// code created by https://www.youtube.com/@flutterflowexpert
// video - https://youtube.com/watch?v=IwhSbx1yN1M
// support my work - https://github.com/sponsors/bulgariamitko

Future batchDelete(String? collectionName) async {
  collectionName = collectionName ?? '';

  // Get a reference to the Firestore database
  final firestore = FirebaseFirestore.instance;

  // Get a reference to the collection
  final collectionRef = firestore.collection(collectionName);

  // Get a list of all the documents in the collection
  final QuerySnapshot snapshot = await collectionRef.get();

  // Delete each document in the collection
  snapshot.docs.forEach((document) async {
    await document.reference.delete();
  });
}