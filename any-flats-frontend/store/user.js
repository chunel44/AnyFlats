import Vuex from 'vuex'

const cookieparser = process.server ? require('cookieparser') : undefined

const createStore = () => {
  return new Vuex.Store({
    state: () => ({
      user: null
    }),
    mutations: {
      setUser(state, user) {
        state.user = user
      }
    },
    actions: {
      nuxtServerInit({ commit }, { req }) {
        let user = null
        if (req.headers.cookie) {
          const parsed = cookieparser.parse(req.headers.cookie)
          try {
            user = JSON.parse(parsed.user)
          } catch (err) {
          }
        }
        commit('setUser', user)
      }
    }
  })
}

export default createStore