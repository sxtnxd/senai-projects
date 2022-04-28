import { createStore } from 'vuex'

export default createStore({
  state: {
    user:{
      name: 'Emilly',
      email: 'emillydpes@gmail.com'
    }
  },
  mutations: {

    registerUser(state, payload){
      state.user.name = payload;
      console.log("Nome alterado!");
    }
  },
  actions: {
  },
  modules: {
  }
})
