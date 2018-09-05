<template>
<v-parallax src="/pig/ball.jpg" height="649">
  <div>
    <nuxt-link to="/student">
    <center>
      <div class="text-xs-center">
    <v-btn round color="primary" dark><v-icon>account_balance</v-icon></v-btn>
  </div>
  </center>
  </nuxt-link><br>
    <router-link :to="{ path: '/Profile'}" replace>
    <center>  
      <v-btn round color="primary" dark><v-icon>face</v-icon></v-btn></center></router-link><br>
    <router-link :to="{ path: '/student2'}" push>
    <center> 
      <v-btn round color="primary" dark><v-icon>assignment</v-icon></v-btn></center></router-link><br>
  </div>
  
  
  </v-parallax>
</template>

<script>
export default {
  layout :'default',
  data() {
    return {
      id: 1,
    }
  },
}
</script>
