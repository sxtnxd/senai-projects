import * as React from 'react';
import { StyleSheet, View, Text, TouchableOpacity,Image, Alert, TextInput} from 'react-native';
import { RadioButton } from 'react-native-paper';
import AsyncStorage from '@react-native-async-storage/async-storage';
import styles from './styles'


const allQuestions= [
    {'Question':'Limpeza e conservação da sala e da oficina.'},
    {'Question':'Disponibilidade de equipamentos, máquinas e ferramentas para realização do curso.'},
    {'Question':'Qualiade das apostilas, livros e textos, quanto a impressão e adequação da informação.'},
    {'Question':'Cumprimento do horário das aulas.'},
    {'Question':'Cumprimento do objetivo proposto pelo curso.'},
    {'Question':'Preocupação do docente com o aproveitamento dos alunos.'},
    {'Question':'Domínio do docente sobre os assuntos tratados.'},
    {'Question':'O aprendizado, na teoria e na pratica, em relação ao esperado.'},
    {'Question':'Conteudo do  curso, em relação as espectativas.'},
    {'Question':'Atendimento da recepção / secretaria da escola.'},
    {'Question':'Atendimento telefônico da escola'},
    {'Question':'Atendimento da cantina / Lanchonete.'},
    {'Question':'Atendimento da biblioteca.'},
]

function Quest({ navigation, route }){

    const [checked , setChecked ] = React.useState(' ');
    const [checkedVal, setCheckedVal] = React.useState(' ');
    const [comment, setcomment] = React.useState('');

    React.useEffect(() => {
        getData();
    }, [])
    const updateChoices = () => {
  
        AsyncStorage.setItem('option' + route.params.Number, checked )
        AsyncStorage.setItem('sat' + route.params.Number, checkedVal )
        AsyncStorage.setItem('comment' + route.params.Number, comment )
    }
    const getData = () =>{
        try {
            AsyncStorage.getItem('option' + route.params.Number)
            .then(value => {
                if(value != null){
                    setChecked(value);    
                }

            })
            AsyncStorage.getItem('sat' + route.params.Number)
            .then(value => {
                if(value != null){
                    setCheckedVal(value);    
                }
                
            })
        } catch (error) {
            console.log(error);
        }
    }
        return(
            <View style={styles.container} >
                <View style={styles.header}>
                    <Text style={styles.headerText}>
                        Question {route.params.Number}:
                    </Text>
                    <Image style={styles.img} source={require('../../assets/imgs/senai-logo.png')}/>
                </View>
            <View style={styles.body}>
        

            <View style={{height: '80%', width: '80%'}}>
            <Text>{route.params.Number}. {allQuestions[route.params.Number - 1].Question}</Text>
            <Text>[Importance Level]</Text>
            <View style={styles.rbtCombo}>
                <RadioButton
                value="high"
                status={ checked === 'high' ? 'checked' : 'unchecked' }
                onPress={() => setChecked('high')}
                color="black"
                />
                <Text>High</Text>
            </View>
            <View style={styles.rbtCombo}>
                <RadioButton
                value="medium"
                status={ checked === 'medium' ? 'checked' : 'unchecked' }
                onPress={() => setChecked('medium')}
                color="black"
                />
                <Text>Medium</Text>
            </View>
            <View style={styles.rbtCombo}>
                <RadioButton
                value="low"
                status={ checked === 'low' ? 'checked' : 'unchecked' }
                onPress={() => setChecked('low')}
                color="black"
                />
                <Text>Low</Text>
            </View>
            <Text>[Satisfaction Level]</Text>
            <View style={styles.rbtCombo}>
                <RadioButton
                value="great"
                status={ checkedVal === 'great' ? 'checked' : 'unchecked' }
                onPress={() => setCheckedVal('great')}
                color="black"
                />
                <Text>Great</Text>
            </View>
            <View style={styles.rbtCombo}>
                <RadioButton
                value="good"
                status={ checkedVal === 'good' ? 'checked' : 'unchecked' }
                onPress={() => setCheckedVal('good')}
                color="black"
                />
                <Text>Good</Text>
            </View>
            <View style={styles.rbtCombo}>
                <RadioButton
                value="regular"
                status={ checkedVal === 'regular' ? 'checked' : 'unchecked' }
                onPress={() => setCheckedVal('regular')}
                color="black"
                />
                <Text>Regular</Text>
            </View>
            <View style={styles.rbtCombo}>
                <RadioButton
                value="poor"
                status={ checkedVal === 'poor' ? 'checked' : 'unchecked' }
                onPress={() => setCheckedVal('poor')}
                color="black"
                />
                <Text>Poor</Text>
            </View>
            <View style={styles.rbtCombo}>
                <RadioButton
                value="na"
                status={ checkedVal === 'na' ? 'checked' : 'unchecked' }
                onPress={() => setCheckedVal('na')}
                color="black"
                />
                <Text>Not Applicable</Text>
            </View>


            {checkedVal === 'poor' || checkedVal === 'regular' ? 
                <View style={{height: "20%", marginBottom: "20%"}}>
                    <Text style={styles.label} >
                    Comments:
                    </Text>
                    <TextInput  
                        multiline
                        numberOfLines={10}
                        onChangeText={comment => setcomment(comment)}
                        value={comment}
                        style={styles.lgInp}
                    />
                </View>
                :
                <View>
                </View>
            }
            </View>

    
            <TouchableOpacity
            style= {styles.btnBack}
            onPress={route.params.Number == 1 ? () => navigation.push('Quests', {'Number': route.params.Number }) : () => (navigation.push('Quests', {'Number': route.params.Number - 1 }), updateChoices())}
            > 
            <Text>→</Text>
            
            </TouchableOpacity>
                
            <TouchableOpacity
            style= {styles.btnGo}
            onPress={allQuestions.length == route.params.Number ? 
                    () => checked != " " && checkedVal != " " ? (navigation.push('Comment'), updateChoices()) 
                    :Alert.alert("Campos Vazios","Preencha todos os campos para prosseguir",[{ text: "OK"}])
                     : () => checked != " " && checkedVal != " " ? 
                            (navigation.push('Quests', {'Number': route.params.Number + 1 }), updateChoices())
                            : Alert.alert("Campos Vazios","Preencha todos os campos para prosseguir",[{ text: "OK"}])}
            >
            <Text>→</Text>
            </TouchableOpacity>
    
            </View>
            </View>    
        ) 
    }
export default Quest
