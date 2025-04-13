import { ref, computed } from 'vue'
import { defineStore } from 'pinia'

// for i18n
import zhCn from 'element-plus/dist/locale/zh-cn.mjs'
import en from 'element-plus/dist/locale/en.mjs'

export const useCounterStore = defineStore('counter', () => {
  const count = ref(0)
  const doubleCount = computed(() => count.value * 2)
  function increment() {
    count.value++
  }

  return { count, doubleCount, increment }
})

export const useI18n = defineStore('i18n', () => {
  const language = ref('zh-cn')
  const locale = computed(() => (language.value === 'zh-cn' ? zhCn : en))
  const toggle = () => {
    language.value = language.value === 'zh-cn' ? 'en' : 'zh-cn'
  }

  return { language, locale, toggle }
})
