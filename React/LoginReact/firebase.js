import { firebase } from "@firebase/app";
import '@firebase/auth'

const firebaseConfig = {
  apiKey: "AIzaSyC41kI7V0KZ5RmH3DczTJFPTPh5bxqqSB4",
  authDomain: "login-acd69.firebaseapp.com",
  projectId: "login-acd69",
  storageBucket: "login-acd69.appspot.com",
  messagingSenderId: "191326269476",
  appId: "1:191326269476:web:56d0bdb87ff6e85bb4e8b1",
  measurementId: "G-83Y1Z5BXMZ"
};

// Initialize Firebase

const app = firebase.initializeApp(firebaseConfig);

const auth = firebase.auth()

export {auth};