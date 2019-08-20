import Vue from 'vue'
import Antd from 'ant-design-vue'
import moment from 'moment'
import enGB from 'ant-design-vue/lib/locale-provider/en_GB'
import 'ant-design-vue/dist/antd.css'

// Set monday as start of week globally
let momentLocale = moment.locale()
moment.updateLocale(momentLocale, {
  week: {
    dow: 1
  }
})

// Global usage of Ant Design Components
Vue.use(Antd)

export default {
  data () {
    return {
      current: ['mail'],
      openKeys: ['sub1'],
      locale: enGB
    }
  },
  methods: {
    handleClick (e) {
      
    },
    titleClick (e) {
      
    },
  },
  watch: {
    openKeys (val) {
      
    },
  },
}