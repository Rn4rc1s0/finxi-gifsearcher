import Vue from 'vue'
// import Vuex from 'vuex'
import SuiVue from 'semantic-ui-vue'

import giphy from './modules/giphy'

// Vue.use(Vuex)
Vue.use(SuiVue)

const store = new Vuex.Store({
    modules: {
        giphy
    }
})

export default store