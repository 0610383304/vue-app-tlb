<template>
<v-app>
   <v-form v-model="valid"   > 
    <H1>การค้นหาผลการแข่งขันฟุตบอล</H1>
    <v-text-field
      v-model="member"
    ></v-text-field>
  </v-form>
    <div class="text-xs-center">
    <v-btn color="back" dark @click="Dosearch"><v-icon>vpn_key</v-icon> </v-btn> 
  </div>

  <div>
    <v-data-table
      :headers="headers"
      :items="desserts"
      class="elevation-1"
    >
      <template slot="headerCell" slot-scope="props">
        <v-tooltip bottom>
          <span slot="activator">
            {{ props.header.text }}
          </span>
          <span>
            {{ props.header.text }}
          </span>
        </v-tooltip>
      </template>
      <template slot="items" slot-scope="props">
        <td>{{ props.item.s_code }}</td>
        <td class="text-xs-left">{{ props.item.s_name }}</td>
        <td class="text-xs-left">{{ props.item.s_class }}</td>
        <td class="text-xs-left">{{ props.item.s_group }}</td>
      </template>
    </v-data-table>
 
  </div>
  </v-app>
  
</template>
<script>
export default {
  data () {
    return {
      headers: [
        {
          text: 'ทีมที่',
          align: 'left',
          sortable: false,
          value: 'name',
        },
        { text: 'ชื่อทีม', value: 'ชื่อทีม' },
        { text: 'ชนะ', value: 'ชนะ' },
        { text: 'แพ้', value: 'แพ้' },

      ],
      desserts: [],
    }
  },
async created() {
  // เรียกใช้งาน
    this.getstudent()
  }, 
methods:{
      async Dosearch(){
        let res = await this.$http.post('http://127.0.0.1/php-ben/search.php', {
          member : this.member,
        })
        if (res.data.ok){
          this.desserts = res.data.admin 
        }
      },
}
}
</script>
