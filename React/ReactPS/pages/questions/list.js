import * as React from 'react';
import { StyleSheet, View, Text, TouchableOpacity } from 'react-native';
import styles from './styles'

function listScreen({ navigation }) {
  return (
    <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
      <Text>Details Screen</Text>
      <TouchableOpacity
        style= {styles.btnPlus}
        onPress={() => navigation.push('Home')}
      >
      <Text>→</Text>
      </TouchableOpacity>
    </View>
  );
}

export default listScreen

