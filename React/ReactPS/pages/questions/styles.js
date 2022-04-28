import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
    innerText: {
        color: 'red'
      },
      btnPlus: {
        color: 'white',
        fontSize: 20,
        backgroundColor: 'black',
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
    container:{
        width: "100%",
        height: "100%"
    },
    header:{
        width: "100%", 
        height: "10%", 
        backgroundColor:"#FF0000",
        
        flexDirection: "row",
        alignItems:"center",
        justifyContent: "space-between"
    },
    headerText:{
        fontSize: 20,
        color:"#F2F7F2",
        marginLeft: 20
    },
    label:{
        marginTop: "5%"
    },
    lgInp:{
        padding: 10,
        borderWidth: 1,
        borderColor: "black",
        width: "100%",
        height: "100%",
        marginBottom:"5%"
    },
    img:{
        width: "25%",
        height:"80%",
        resizeMode:'contain',
        marginRight:20
    },
    body:{
        flex: 1, 
        alignItems: 'center', 
        justifyContent: 'center', 
        backgroundColor: "#F2F7F2" 
    },
    btnGo: {
      color: 'white',
      fontSize: 20,
      backgroundColor: '#d8dbd7',
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
    btnBack:{
      transform: [{ rotateY: '180deg'}],
      color: 'white',
      fontSize: 20,
      backgroundColor: '#d8dbd7',
      width: 40,
      height: 40,
      display:'flex',
      justifyContent: 'center',
      alignItems: 'center',
      borderRadius: 20,
      position: 'absolute',
      top: '90%',
      left: '5%'
    },
    rbtCombo:{
      flex: 1,
      flexDirection: 'row',
      alignItems: 'center'
    },
    container:{
        width: "100%",
        height: "100%"
    },
    header:{
        width: "100%", 
        height: "10%", 
        backgroundColor:"#FF0000",  
        flexDirection: "row",
        alignItems:"center",
        justifyContent: "space-between"
    },
    headerText:{
        fontSize: 20,
        color:"#F2F7F2",
        marginLeft: 20
    },
    img:{
        width: "25%",
        height:"80%",
        resizeMode:'contain',
        marginRight:20
    },
    body:{
        flex: 1, 
        alignItems: 'center', 
        justifyContent: 'center', 
        backgroundColor: "#F2F7F2" 
    },
    label:{
        marginTop: "5%"
    },
    lgInp:{
        padding: 10,
        borderWidth: 1,
        borderColor: "black",
        width: "80%",
        height: "60%"
    },
    btnBack:{
      transform: [{ rotateY: '180deg'}],
      color: 'white',
      fontSize: 20,
      backgroundColor: '#d8dbd7',
      width: 50,
      height: 40,
      display:'flex',
      justifyContent: 'center',
      alignItems: 'center',
      borderRadius: 20,
      position: 'absolute',
      top: '90%',
      left: '5%'
    },
    btnGo: {
      color: 'white',
      fontSize: 20,
      backgroundColor: '#d8dbd7',
      width:50,
      height: 40,
      display:'flex',
      justifyContent: 'center',
      alignItems: 'center',
      borderRadius: 20,
      position: 'absolute',
      top: '90%',
      left: '85%'
    },
    btnSend:{
        color: 'white',
        fontSize: 20,
        backgroundColor: '#d8dbd7',
        width:100,
        height: 40,
        display:'flex',
        justifyContent: 'center',
        alignItems: 'center',
        borderRadius: 20,
        position: 'absolute',
        top: '90%',
        left: '75%'
    },
    rbtCombo:{
      flex: 1,
      flexDirection: 'row',
      alignItems: 'center',
      width: 60,
      height: 50,
    }
  });

  export default styles;