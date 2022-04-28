<template>
  <div class="about">
    <div class="myform p-fluid">
      <h1 class="title">
          {{ $store.state.user.name }}
      </h1>
      <h2>{{ myname }}</h2>

      <span class="p-input-icon-right p-float-label">
        <i class="pi pi-user" />
         <InputText type="text" id="username" v-model="myname" />
        <label for="username">Usuário</label>
      </span>

      <Password id="password" placeholder="Senha" toggleMask></Password>

      <Button @click="saveName">Entrar</Button>
    </div>
  </div>
</template>

<script>
export default {
  name: "About",
  data(){
    return {
      myname: "OK"
    }
  },
  methods:{
    saveName(){

      console.log("Save name: "+ this.myname);
      this.$store.commit('registerUser', this.myname);
    }
  }
}
</script>

<style scoped Lang="scss">
.about {
  background-color: indianred;
  height: 100vh;
  width: 100vw;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.myform {
  width: 30%;
  height: 60%;
  background-color: black;
  border-radius: 25px;
}

.title {
  color: white;
}
</style>