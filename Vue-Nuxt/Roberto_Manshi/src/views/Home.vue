<template>
  <div>
    <div class="home">
      <h1>
        Bem vindo ao <br />
        Roberto Manshi
      </h1>
    </div>
    <Cardinfo
      text_title="Tratamento Especial!"
      text_content="O Manshi
    conquistou o 10º prêmio de Melhor Restaurante Japonês do guia Comer e
    Beber da Revista Veja Campinas em 2019. Além de típicas receitas japonesas
    a Casa oferece, também, especialidades diversificadas que permeiam
    referências tailandesas, chinesas, além de trazer aos pratos, elementos e
    temperos brasileiros. O espaço, moderno e descontraído, incorpora estilo e
    design para servir um completo bufê de almoço, festivais completos à noite,
    pratos à la carte, além de uma temakeria interna, sempre à disposição dos
    clientes."
      back_color="black"
      text_color="white"
      :imgs="my_imgs"
    />
  </div>
</template> 

<script>
import Cardinfo from "../components/CardInfo.vue";

export default {
  name: "Home",
  components: {
    Cardinfo,
  },
  data(){
    return{
      my_imgs: []
    }
  },
  methods:{
    
    async getImagesBackend(){

      const request = await fetch("http://localhost:3000/imgback");
      const jsonData = await request.json();
      console.log(jsonData);

    }
  },
  mounted(){
    this.getImagesBackend();
  }
};
</script>


<style scoped src="./Home.css">
</style>