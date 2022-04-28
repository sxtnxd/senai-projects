import * as React from 'react';
import { StyleSheet, View, Text, TouchableOpacity, Image,Alert, TextInput, SafeAreaView } from 'react-native';
import firebase from '../database/FIrebaseConfig'
import AsyncStorage from '@react-native-async-storage/async-storage';
import styles from './styles'



export default function login({navigation}){
    const [User, setUser] = React.useState("");
    const [Pass, setPass] = React.useState(null);

    const database = firebase.firestore()
    
    const createAcc = () => {
        firebase.auth().createUserWithEmailAndPassword(User, Pass)
        .then((userCredential) => {
            let user = userCredential.user;
        })
        .catch((error) => {
            setErrorLogin(true)
            let errorCode = error.code;
            let errorMessage = error.message;
            console.log(errorMessage);  
        });
    }


    const authenticate = () =>{
        if(User !== null && Pass !== null ){
            firebase.auth().signInWithEmailAndPassword(User, Pass)
            .then(async(userCredential) => {
            
                let user = await userCredential.user;

                AsyncStorage.clear();
                await AsyncStorage.setItem("logedUser", user.email);
                
                setUser("");
                setPass("");
                navigation.push("Home")
            })
            .catch((error) => {
                let errorCode = error.code;
                let errorMessage = error.message;
                Alert.alert(
                    "Login Falhou",
                    "Usuário ou senha inválido",
                    [{ text: "OK"}]
                );
            });
        }else{
            Alert.alert("Login Falhou","Preencha Todos os campos",[                
                { text: "OK" }
                ]);
        }
    }
    React.useEffect(() => {
        setUser("");
        setPass("");
    }, []);

    
    return(
        <SafeAreaView style={styles.container}>
            
            <Image style={styles.img} source={require('../../assets/imgs/senai-logo.png')}/>
            <View style={styles.formData} >
                <TextInput placeholder="User" type="text" name="userInput" style={styles.textUser} value={User} onChangeText={(User)=> setUser(User)} />
                <TextInput placeholder="Password" secureTextEntry={true}  name="passInput" style={styles.textPass} value={Pass} onChangeText={(Pass)=> setPass(Pass)}/>
                <TouchableOpacity onPress={User !="" && Pass !="" ? () => authenticate() : () => Alert.alert("Login Falhou", "Preencha Todos os campos",[{text: "OK"}])} style={styles.loginEnterBtn}><Text style={styles.textLogin}>Sign In</Text></TouchableOpacity>
            </View>
        </SafeAreaView>
    )
}
