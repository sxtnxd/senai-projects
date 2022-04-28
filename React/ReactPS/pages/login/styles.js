import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
    container:{
        width: '100%',
        height:'100%',
        flex: 1,
        justifyContent: "center",
        alignItems: "center",
        backgroundColor: "#f2f2f2"
        
    },  
    img:{
        zIndex: 20,
        width: "50%",
        margin:0,
        height:"10%",
        top: "15%",
        resizeMode:'contain'
    },
    formData:{
        width: "100%",
        height: "100%",
        flex: 1,
        justifyContent: "center",
        alignItems: "center",
    },  
    textUser:{
        backgroundColor: 'white',
        width: "80%",
        height: 60,
        borderRadius: 10,
        paddingStart: 15,
        fontSize: 20,
        marginBottom: 25,
        outlineStyle: 'none',
    },
    textPass:{
        backgroundColor: 'white',
        width: "80%",
        height: 60,
        borderRadius: 10,
        paddingStart: 15,
        fontSize: 20,
        outlineStyle: 'none',
    },
    loginEnterBtn:{
        position:'absolute',
        width: '80%',
        height: 50,
        backgroundColor: '#FF0000',
        flex: 1,
        alignItems: 'center',
        justifyContent: 'center',
        fontSize: 40,
        top: '70%',
        right: '10%',
        borderRadius: 10,
        outlineStyle:'none'
    },
    textLogin:{
        color: 'white',
    }
})


export default styles;