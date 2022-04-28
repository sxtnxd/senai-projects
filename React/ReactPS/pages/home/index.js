import * as React from 'react';
import { StyleSheet, View, Text, TouchableOpacity, Image } from 'react-native';
import AsyncStorage from '@react-native-async-storage/async-storage';
import styles from './styles'


function HomeScreen({ navigation }){
  React.useEffect(() => {
    
  }, []);
  return (
      <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
      <TouchableOpacity
        style= {styles.btnInit}
        onPress={() => navigation.push('Quests')}
      >
      <Text style= {styles.btnInitText}>Start</Text>
      </TouchableOpacity>

       
        <TouchableOpacity style={styles.logoffBtn}  onPress={() => navigation.push('Login')}>
          <Image style={styles.logoff} source={require('../../assets/imgs/logoff.png')} blurRadius={1} />
        </TouchableOpacity>
    </View>
  );
}

export default HomeScreen
