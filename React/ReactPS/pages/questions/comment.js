import * as React from 'react';
import { StyleSheet, View, Text,TextInput, TouchableOpacity,Image, Alert} from 'react-native';
import { RadioButton } from 'react-native-paper';
import AsyncStorage from '@react-native-async-storage/async-storage';
import setDataDB from '../database/sendData'
import styles from './styles'

export default function comm({ navigation }) {

    const [value, setVal] = React.useState('false');
    const [comment, setcomment] = React.useState('');

    const callSave = async () => {
        await AsyncStorage.setItem("anonymous", value);
        await AsyncStorage.setItem("comment", comment);
        setDataDB();
        Alert.alert(
            "Pesquisa enviada com sucesso.",
            [
            
            { text: "OK"}
            ]
        );
        navigation.push('Home')
    }
    
  return (
    <View style={styles.container} >
        <View style={styles.header}>
            <Text style={styles.headerText}>
                Comment
            </Text>
            <Image style={styles.img} source={require('../../assets/imgs/senai-logo.png')}/>
        </View>
        <View style={styles.body}>
            <Text style={styles.label} >
               Comment:
            </Text>
            <TextInput  
                multiline
                numberOfLines={10}
                onChangeText={comment => setcomment(comment)}
                value={comment}
                style={styles.lgInp}
            />
            <View style={styles.rbtCombo}>
                <RadioButton
                value="false"
                status={ value === 'true' ? 'checked' : 'unchecked'}
                onPress={value === 'true' ? () => setVal('false') :() => setVal('true')}
                color="black"
                />
                <Text>Send anonymously?</Text>
            </View>
        </View>
        <TouchableOpacity
            style= {styles.btnBack}
            onPress={() => navigation.push('Quests', {'Number': 13 })}
            > 
            <Text>➡</Text>
            
        </TouchableOpacity>
        <TouchableOpacity
            style= {styles.btnSend}
            onPress={() => (callSave())}
            >
            <Text>Send Survey</Text>
            </TouchableOpacity>
    </View>
  );
}
