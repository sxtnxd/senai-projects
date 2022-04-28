import { StyleSheet } from "react-native";


const styles = StyleSheet.create({
    innerText: {
      color: 'red'
    },
    btnPlus: {
      color: 'white',
      fontSize: 20,
  
      width: 40,
      height: 40,
      display:'flex',
      justifyContent: 'center',
      alignItems: 'center',
      borderRadius: 20,
      position: 'absolute',
      top: '90%',
      left: '85%'
    },
    btnInit:{
      backgroundColor: '#ff000d',
      width: '50%',
      height: '10%',
      display: 'flex',
      alignItems: 'center',
      justifyContent: 'center',
      borderRadius: 10,
      
    },
    logoffBtn:{
      width: 90,
      
      height: 40,
      flex: 1,
      flexDirection: 'row',
      alignItems: 'center',
      justifyContent: 'center',
      position:'absolute',
      backgroundColor: '#e3e3e3',
      top: 10,
      left: 10,
      borderRadius: 20
    },
  
    logoff:{
      top: -1.5,
      width: 30,
      height: 30,
      resizeMode: 'contain',
  
    },
    btnInitText:{
      color: "white",
      fontSize: 20,
    },
    iconImg:{
        top: "35%",
        height: '10%',
        width: '100%',
        resizeMode: 'contain'
    },
  
  });

  export default styles;