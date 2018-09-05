<template>
<v-parallax src="/pig/ball.jpg" height="649">
   <v-form v-model="valid">
    <v-text-field
      v-model="name"
      :rules="nameRules"
      :counter="10"
      label="Name"
      required
    ></v-text-field>
    <v-text-field
      v-model="email"
      :rules="emailRules"
      label="E-mail"
      required
    ></v-text-field>
  </v-form>
  <div class="text-xs-center">
     <v-btn round color="primary" dark @click="Dologin"><v-icon>contacts</v-icon></v-btn>
     <nuxt-link to="/"><v-btn round color="primary" dark><v-icon>cancel</v-icon></v-btn></nuxt-link>
  </div>
  
  </v-parallax >
</template>

<script>
  export default {
    layout:'publics',
    data: () => ({
      valid: false,
      name: '',
      nameRules: [
        v => !!v || 'Name is required',
        v => v.length <= 20 || 'Name must be less than 10 characters'
      ],
      email: '',
      emailRules: [
        v => !!v || 'E-mail is required',
        v => /^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$/.test(v) || 'E-mail must be valid'
      ]
    }),
    methods:{
       async Dologin(){
        console.log (this.name)
        console.log (this.email)
        let res = await this.$http.post('http://127.0.0.1/php-ben/login.php', {
          user : this.name,
          pass : this.email
        })
        if (res.data.ok){
          this.$router.push('/table')
        }
      },

      Dosave(){
        this.name='',
        this.email=''
      }
    }
  }
</script>