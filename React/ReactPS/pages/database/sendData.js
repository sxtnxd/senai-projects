import firebase from './FIrebaseConfig'
import AsyncStorage from '@react-native-async-storage/async-storage';
let en = "false";
let data = {};
export default async function setDataDB(){
    
    await AsyncStorage.getItem("anonymous").then(value => {
        en = value
    })
    for(let i = 0; i <= 13; ++i){
        await AsyncStorage.getItem("option" + i).then(value => {
        if(value != null){
            let n = "option"+ i;
            data["option" + i] = value
        }})
        await AsyncStorage.getItem("sat"+ i).then(value => {
        if(value != null){
            let n = "sat"+ i;
            data["sat"+ i] = value
        }})
        await AsyncStorage.getItem("comment"+ i).then(value => {
        if(value != null){
            let n = "comment"+ i;
            data["comment"+ i] = value
        }})
    }
    
    await AsyncStorage.getItem("comment").then(value => {
        if(value != null){
            data["finalComment"] = value
        }
        
    })
    
    await AsyncStorage.getItem("logedUser").then(value => {
        if (en === "false"){
            
            data['user'] = value;
        }else{
             data['user'] = "anonymous";
        }
    })
    firebase.database().ref('resultados/').push(data)
};