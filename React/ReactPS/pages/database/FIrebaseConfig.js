import firebase from "firebase"
import 'firebase/storage'

var firebaseConfig = {
  apiKey: "AIzaSyA_tfmZhnmydPDfpKm7_CdCMs8m8gQdsLw",
  authDomain: "pesquisasatisfacao-82b5a.firebaseapp.com",
  projectId: "pesquisasatisfacao-82b5a",
  storageBucket: "pesquisasatisfacao-82b5a.appspot.com",
  messagingSenderId: "719990490942",
  appId: "1:719990490942:web:f2034131f1169fbb228e6f",
  measurementId: "G-HVKMYQNNRH"
};

firebase.initializeApp(firebaseConfig);

export default firebase