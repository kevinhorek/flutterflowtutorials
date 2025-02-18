// code created by https://www.youtube.com/@flutterflowexpert
// video - https://www.youtube.com/watch?v=QOIbdhPrNuE
// replace - [{"Name of json auth file": "auth.json"}, {"Collection name": "demo"}, {"Text": "Sample text"}, {"Number": "42"}, {"Bool": "true"}, {"Array": "['item1', 'item2', 'item3']"}, {"GeoPoint": "37.421999, -122.084057"}, {"DocID": "exampleCollection/exampleDoc"} ]
// support my work - https://github.com/sponsors/bulgariamitko

const admin = require('firebase-admin');
const serviceAccount = require('./auth.json');

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
});

const db = admin.firestore();

// Create data with different data types
const demoData = {
  stringField: 'Sample text',
  numberField: 42,
  booleanField: true,
  arrayField: ['item1', 'item2', 'item3'],
  nullField: null,
  timestampField: admin.firestore.Timestamp.now(),
  geopointField: new admin.firestore.GeoPoint(37.421999, -122.084057),
  referenceField: db.doc('exampleCollection/exampleDoc'),
  mapField: {
    key1: 'value1',
    key2: 'value2',
  },
};

// Add the document to the "demo" collection
db.collection('demo')
  .add(demoData)
  .then((docRef) => {
    console.log('Document written with ID: ', docRef.id);
  })
  .catch((error) => {
    console.error('Error adding document: ', error);
  });