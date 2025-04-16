<script setup lang="ts">
import { ElMessage } from 'element-plus'
import { ref } from 'vue'

defineProps<{ msg: string }>()

const count = ref(0)
const input = ref('element-plus')

const curDate = ref('')

function toast() {
  ElMessage.success('Fuck you')
}

const value1 = ref(true)
</script>

<template>
  <el-main
    class="m-0 p-0 bg-gradient-to-b dark:from-[#212121] dark:to-[#121212] min-h-screen from-[#f2f2f2] to-[#e5e5e5]"
  >
    <el-menu
      class="m-0 flex flex-wrap items-center justify-left text-left"
      style="background-color: rgba(255, 255, 255, 0)"
      :ellipsis="false"
      router
    >
      <el-menu-item index="/" class="p-0 m-0">
        <el-button round size="large"> Home </el-button>
      </el-menu-item>
      <el-menu-item index="/music/" class="p-0 m-0">
        <el-button round size="large"> Music </el-button>
      </el-menu-item>
    </el-menu>

    <h1 color="$el-color-primary" class="text-4xl">
      {{ msg }}
    </h1>

    <p class="text-lg">
      This is a website build with
      <a href="https://vuejs.org/" target="_blank"> Vue 3</a> +
      <a href="https://vite.dev/" target="_blank"> Vite</a> +
      <a href="https://www.typescriptlang.org/" target="_blank"> Typescript</a> +
      <a href="https://sass-lang.com/" target="_blank"> Sass/SCSS</a> +
      <a href="https://router.vuejs.org/" target="_blank"> Vue-Router</a> +
      <a href="https://pinia.vuejs.org/" target="_blank"> Pinia</a> +
      <a href="https://element-plus.org/" target="_blank"> Element Plus</a>, and
      <a href="https://unocss.dev/" target="_blank"> Unocss</a>
    </p>

    <!-- example components -->
    <div class="mb-4">
      <el-button size="large" @click="toast"> El Message </el-button>

      <MessageBoxDemo />
    </div>

    <div class="my-2 flex flex-wrap items-center justify-center text-center">
      <el-button @click="count++"> count is: {{ count }} </el-button>
      <el-button type="primary" @click="count++"> count is: {{ count }} </el-button>
      <el-button type="success" @click="count++"> count is: {{ count }} </el-button>
      <el-button type="warning" @click="count++"> count is: {{ count }} </el-button>
      <el-button type="danger" @click="count++"> count is: {{ count }} </el-button>
      <el-button type="info" @click="count++"> count is: {{ count }} </el-button>
    </div>

    <div>
      <el-tag type="success" class="m-1"> Tag 1 </el-tag>
      <el-tag type="warning" class="m-1"> Tag 1 </el-tag>
      <el-tag type="danger" class="m-1"> Tag 1 </el-tag>
      <el-tag type="info" class="m-1"> Tag 1 </el-tag>
    </div>

    <div>
      <el-switch v-model="value1" />
      <el-switch
        v-model="value1"
        class="m-2"
        style="--el-switch-on-color: black; --el-switch-off-color: gray"
      />
    </div>

    <div class="my-2">
      <el-input v-model="input" class="m-2" style="width: 200px" />
      <el-date-picker v-model="curDate" class="m-2" type="date" placeholder="Pick a day" />
    </div>

    <p>For example, we can custom primary color to 'green'.</p>

    <p>
      Edit
      <code>components/HelloWorld.vue</code> to test components.
    </p>
    <p>
      Edit
      <code>styles/element/var.scss</code> to test scss variables.
    </p>

    <p>
      Full Example:
      <a href="https://github.com/element-plus/element-plus-vite-starter" target="_blank"
        >element-plus-vite-starter</a
      >
      | On demand Example:
      <a href="https://github.com/element-plus/unplugin-element-plus" target="_blank"
        >unplugin-element-plus/examples/vite</a
      >
    </p>
  </el-main>
</template>
